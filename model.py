
import json
import random

#konstante za preverjanje
RIGHT_ANSWER = '+'
WRONG_ANSWER = '-'
NOT_ANSWERED = 'n'

START = 's'
FINISHED = 'f'

class Game:

    def __init__(self, name):  # name is a string
        self.name = name
        self.countries = {}
        self.uncheckedCountries = []
        self.right_answers = 0
        self.counter = 0

        with open("files/countries" + self.name + ".txt", 'r') as file:
            temp = file.readlines()

        for country in temp:
            if country == temp[-1]:
                self.countries.update({country : 'n'})
                self.uncheckedCountries.append(country)
            else:
                self.countries.update({country[:-1] : 'n'})
                self.uncheckedCountries.append(country[:-1])


    def end(self):
        return self.counter == len(self.countries)

    
    def get_new_country(self):
        return random.choice(self.uncheckedCountries)
        

    def update_entries(self, country, click_value):
        if self.end():
            return FINISHED
        elif click_value:
            self.countries[country] = '+'
            self.right_answers += 1
            self.uncheckedCountries.remove(country)
            self.counter += 1
            return RIGHT_ANSWER
        else:
            self.countries[country] = '-'
            self.uncheckedCountries.remove(country)
            self.counter += 1
            return WRONG_ANSWER   


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
        new_id = self.new_game_id()
        self.games[new_id] = (game, START)
        self.write_to_file()
        return new_id


    def guess(self, game_id, country, click_value):
        self.load_games_from_file()
        (game, _) = self.games[game_id]
        new_guess = game.update_entries(country, click_value)
        self.games[game_id] = (game, new_guess)
        self.write_to_file()


    def load_games_from_file(self):
        with open(self.gameFile) as file:
            encrypted_games = json.load(file)
            games = {}
            for game_id in encrypted_games:
                game = encrypted_games[game_id]
                games[int(game_id)] = (Game(game["name"]), game["poskus"])
            self.games = games


    def write_to_file(self):
        with open(self.gameFile) as file:
            encrypted_games = {}
            for game_id in self.games:
                (game, guess) = self.games[game_id]
                encrypted_games[game_id] = {"name" : game.name, "countries" : game.uncheckedCountries, "guess" : guess}
            json.dump(encrypted_games, file)
    

    



