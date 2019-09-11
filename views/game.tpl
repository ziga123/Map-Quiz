% rebase('views/base.tpl')
% import model

<div class="main">
    <div class="sideDiv">
        <div class="sideWindow topWindows gradient-box">
            <p class="windowTextStyle">Take a guess! You have 3 tries for each country.</p>
        </div>
        <div class="sideWindow bottomWindows gradient-box">
            <p class="windowTextStyle">
                % if game.tries_left == 1:
                    You have {{game.tries_left}} try left. Be careful now!
                % else:
                    You have {{game.tries_left}} tries left.
                % end
            </p>
        </div>
    </div>
    <div class="centerDiv">
        <div class="module-border-wrap-title">
            <div class="module main_title">
                % if game.name == "Europe":
                    <h2 class="headerStyle">Map Quiz - Europe</h2>
                % elif game.name == "Asia":
                    <h2 class="headerStyle">Map Quiz - Asia</h2>
                % elif game.name == "Africa":
                    <h2 class="headerStyle">Map Quiz - Africa</h2>
                % elif game.name == "South America":
                    <h2 class="headerStyle">Map Quiz - South America/h2>
                % elif game.name == "Central America":
                    <h2 class="headerStyle">Map Quiz - Central America</h2>
                % elif game.name == "USA":
                    <h2 class="headerStyle">Map Quiz - USA</h2>
                % end
            </div>
        </div>

        <img class="imgStyle" src="/static/{{game.get_picture_name()}}.jpg" />
    </div>
    <div class="sideDiv">
        <div class="sideWindow topWindows gradient-box">
            % temp = len(game.countries) - game.counter - 1
            <p class="windowTextStyle">
            You got {{game.right_answers}} / {{len(game.countries)}} right so far!
            {{temp}} countries left!
            </p>
        </div>
        <div class="sideWindow bottomWindows gradient-box">
            <form class="windowTextStyle" action="/guess/" method="post">
                <p class="windowTextStyle answerText">Type answer in lowercase and press Enter:</p>
                <input type="text" name="country" placeholder="enter country.." autofocus>
            </form>
        </div>
    </div>  
</div>