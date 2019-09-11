import json
import random

#constants for game state, maybe useful for further implementations
RIGHT_ANSWER = '+'
WRONG_ANSWER = '-'

START = 's'
PLAYING = 'p'
FINISHED = 'f'

EUROPE = 'e'
ASIA = 'a'
AFRICA = 'af'
SOUTH_AMERICA = 'sa'
CENTRAL_AMERICA = 'ca'
USA = 'u'


class Game:

    def __init__(self, name, checkedCountries=[], right_answers=0, 
                 current_country='', tries_left=3, counter=0):
        self.name = name
        self.countries = []
        self.checkedCountries = checkedCountries
        self.right_answers = right_answers
        self.current_country = current_country
        self.tries_left = tries_left
        self.counter = counter

        with open("files/countries" + self.name + ".txt", 'r') as file:
            temp = file.readlines()

        for country in temp:
            if country == temp[-1]:
                self.countries.append(country.lower())
            else:
                self.countries.append(country[:-1].lower())


    def end(self):
        temp = []
        for country in self.countries:
            temp.append(country)
        for country in self.checkedCountries:
            if country in temp:
                temp.remove(country)
        return temp == []

    
    def get_new_country(self):
        temp = []
        for country in self.countries:
            temp.append(country)
        for country in self.checkedCountries:
            if country in temp:
                temp.remove(country)
        
        if temp != []:
            return random.choice(temp)
        else:
            return


    def get_picture_name(self):
        return self.current_country.replace(" ", "")


    def update_entries(self, country):
        if self.tries_left != 1 and country != self.current_country:
            self.tries_left -= 1
            return WRONG_ANSWER

        elif self.tries_left != 1 and country == self.current_country:
            self.tries_left = 3
            self.counter += 1
            self.right_answers += 1
            self.checkedCountries.append(self.current_country)
            self.current_country = self.get_new_country()
            if self.end():
                return FINISHED
            else:
                return RIGHT_ANSWER

        elif self.tries_left == 1 and country != self.current_country:
            self.tries_left = 3
            self.counter += 1
            self.checkedCountries.append(self.current_country)
            self.current_country = self.get_new_country()
            if self.end():
                return FINISHED
            else:
                return WRONG_ANSWER

        elif self.tries_left == 1 and country == self.current_country:
            self.tries_left = 3
            self.counter += 1
            self.right_answers += 1
            self.checkedCountries.append(self.current_country)
            self.current_country = self.get_new_country()
            if self.end():
                return FINISHED
            else:
                return PLAYING
        


    # note: wanted to make the game work in a way where you click on the countries
    def countryHash(self): # generates hashes for each country, which can then be used to make a bitmap
        countries = []
        temp = []

        with open("files/countries" + self.name + ".txt", 'r') as file:
            countries = file.readlines()
            i = 255
            for country in countries:
                if country == countries[-1]:
                    temp.append(country + ";" + str(i))
                    i -= 1
                else:
                    temp.append(country[:-1] + ";" + str(i) + "\n")
                    i -= 1
        
        with open("files/countries" + self.name + "Hash" + ".txt", 'w') as file:
            for country in temp:
                file.write(country)


class MapQuiz:

    def __init__(self, gameFile):
        self.games = {}
        self.gameFile = gameFile


    def new_game_id(self):
        if self.games == {}:
            return 0
        else:
            for i in range(len(self.games) + 1):
                if i not in self.games.keys():
                    return i


    def new_game(self, name_of_continent):
        self.load_games_from_file()
        game = Game(name_of_continent)
        game.current_country = game.get_new_country()
        new_id = self.new_game_id()
        self.games[new_id] = (game, START)
        self.write_to_file()
        return new_id


    def guess(self, game_id, country):
        self.load_games_from_file()
        (game, _) = self.games[game_id]
        new_guess = game.update_entries(country)
        self.games[game_id] = (game, new_guess)
        self.write_to_file()


    def load_games_from_file(self):
        with open(self.gameFile) as file:
            encrypted_games = json.load(file)
            games = {}
            for game_id in encrypted_games:
                game = encrypted_games[game_id]
                games[int(game_id)] = (Game(game["name"], game["checkedCountries"], 
                                       game["right_answers"], game["current_country"], 
                                       game["tries_left"], game["counter"]), game["guess"])
            self.games = games
        return


    def write_to_file(self):
        with open(self.gameFile, 'w') as file:
            encrypted_games = {}
            for game_id in self.games:
                (game, guess) = self.games[game_id]
                encrypted_games[game_id] = {"name" : game.name, "checkedCountries" : game.checkedCountries, 
                                            "right_answers" : game.right_answers, "current_country" : game.current_country, 
                                            "tries_left" : game.tries_left, "counter" : game.counter, "guess" : guess}
            json.dump(encrypted_games, file)
        return

    



