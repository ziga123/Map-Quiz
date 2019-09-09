import model
import random
import bottle

KEY = "secret key"
mapquiz = model.MapQuiz("status.json")


@bottle.route('/')
def index():
    return bottle.template('views/index.tpl')

@bottle.get("/probamo/")
def proba():
    return bottle.template("/views/index.tpl")

@bottle.post("/new_game/")
def start_new_game():
    game_id = bottle.request.get_cookie("game_id", secret=KEY)
    (game, guess) = mapquiz.games[game_id]
    bottle.redirect("/game/")
    return

@bottle.get("/static/<filename>")
def server_static(filename):
    return bottle.static_file(filename, root="./images")

bottle.run(debug=True, reloader=True)