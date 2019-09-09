import random
from pynput.mouse import Listener
from bottle import run, route, template, static_file

class Continent:
    def __init__(self, name):
        self.countries = []
        self.name = name

        with open("countries" + self.name + ".txt", 'r') as file:
            temp = file.readlines()

        for country in temp:
            if country == temp[-1]:
                self.countries.append(country)
            else:
                self.countries.append(country[:-1])
            

    def countryHash(self): # generate hashes for each countries, which can then be used to make a bitmap of the image
        countries = []
        temp = []

        with open("countries" + self.name + ".txt", 'r') as file:
            countries = file.readlines()
            i = 255
            for country in countries:
                if country == countries[-1]:
                    temp.append(country + ";" + str(i))
                    i -= 1
                else:
                    temp.append(country[:-1] + ";" + str(i) + "\n")
                    i -= 1
        
        with open("countries" + self.name + "Hash" + ".txt", 'w') as file:
            for country in temp:
                file.write(country)

# checking for clicks
def on_click(x, y, button, pressed):
    if pressed:
        print ('Mouse clicked at ({0}, {1}) with {2}'.format(x, y, button))


@route('/start')
def start():
    return template('startScreen')

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root="./Maps")

@route('/game/<name>')
def game(name):
    continent = Continent('Europe')
    country = random.choice(continent.countries)
    return template('game', name=name, country=country, i=2, num = len(continent.countries))

if __name__ == '__main__':
    run(debug=True, reloader=True)