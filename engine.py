import model
import random
import bottle

KEY = "dwjnoqiakapadjaqwdiOj"
mapquiz = model.MapQuiz("status.json")


@bottle.get('/')
def first_page():
    return bottle.template('views/index.tpl')


@bottle.post('/') 
def reset():
    bottle.redirect('/')
    return

# starts the game with the continent chosen
@bottle.post('/new_game/<continent>')
def start_new_game(continent):
    if continent == model.EUROPE:
        game_id = mapquiz.new_game("Europe")
        bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
        bottle.redirect("/game/")
    if continent == model.ASIA:
        game_id = mapquiz.new_game("Asia")
        bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
        bottle.redirect("/game/")
    if continent == model.AFRICA:
        game_id = mapquiz.new_game("Africa")
        bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
        bottle.redirect("/game/")
    if continent == model.SOUTH_AMERICA:
        game_id = mapquiz.new_game("South America")
        bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
        bottle.redirect("/game/")
    if continent == model.CENTRAL_AMERICA:
        game_id = mapquiz.new_game("Central America")
        bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
        bottle.redirect("/game/")
    if continent == model.USA:
        game_id = mapquiz.new_game("USA")
        bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
        bottle.redirect("/game/")
    return


@bottle.get('/game/')
def show_game():
    game_id = bottle.request.get_cookie("game_id", secret=KEY)
    (game, guess) = mapquiz.games[game_id]
    return bottle.template('views/game.tpl', game=game, game_id=game_id, guess=guess)

# this function runs when we've submited an answer
@bottle.post('/guess/')
def guess():
    game_id = bottle.request.get_cookie("game_id", secret=KEY)
    mapquiz.guess(game_id, country)
    bottle.redirect('/game/')
    return


@bottle.get("/static/<filename>")
def server_static(filename):
    return bottle.static_file(filename, root="./images")


bottle.run(debug=True, reloader=True)