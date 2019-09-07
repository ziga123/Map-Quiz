class Continent:
    def __init__(self, name): # name je string
        self.countries = []
        self.name = name

        with open("countries" + self.name + ".txt", 'r') as file:
            temp = file.readlines()

        for country in temp:
            if country == temp[-1]:
                self.countries.append(country)
            else:
                self.countries.append(country[:-1])
            

    def countryHash(self): # generate hashes for each countries, which can then be used to make a bitmap
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



