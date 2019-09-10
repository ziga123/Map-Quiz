import model
import random
import bottle

KEY = "dwjnoqiakapadjaqwdiOj"
mapquiz = model.MapQuiz("status.json")


@bottle.get('/')
def first_page():
    return bottle.template('views/game.tpl')


@bottle.post('/') 
def reset():
    bottle.redirect('/')
    return


@bottle.post('/new_game/<continent>')
def start_new_game(continent):
    if continent == model.EUROPE:
        game_id = mapquiz.new_game("Europe")
    bottle.response.set_cookie("game_id", game_id, secret=KEY, path="/")
    bottle.redirect("/game/")
    return


@bottle.get('/game/')
def show_game():
    game_id = bottle.request.get_cookie("game_id", secret=KEY)
    (game, guess) = mapquiz.games[game_id]
    return bottle.template('views/game.tpl', game=game, game_id=game_id, guess=guess)


@bottle.get("/static/<filename>")
def server_static(filename):
    return bottle.static_file(filename, root="./images")


bottle.run(debug=True, reloader=True)