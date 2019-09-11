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
                % elif game.name == "SouthAmerica":
                    <h2 class="headerStyle">Map Quiz - South America</h2>
                % elif game.name == "USA":
                    <h2 class="headerStyle">Map Quiz - USA</h2>
                % end
            </div>
        </div>
        <img class="imgStyle" src="/static/{{game.name}}/{{game.get_picture_name()}}.jpg" 
        % if game.name == "Europe":
            height=812px 
        % elif game.name == "USA":
            height=619px
        % elif game.name == "SouthAmerica" or game.name == "Africa":
            height=900px
        % end
        />
    </div>
    <div class="sideDiv">
        <div class="sideWindow topWindows gradient-box">
            % temp = len(game.countries) - game.counter - 1
            <p class="windowTextStyle">
                You got {{game.right_answers}} / {{len(game.countries)}} right so far!
                <br>
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