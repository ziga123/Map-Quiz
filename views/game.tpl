% rebase('views/base.tpl')
% import model

<div class="main">
    <div class="sideDiv">
        <div class="sideWindow topWindows gradient-box">
            <p class="windowTextStyle">Take a guess! You have 3 tries for each country.</p>
        </div>
        <div class="sideWindow bottomWindows gradient-box">
            <p class="windowTextStyle">You have {{game.tries_left}} tries left.
                % if game.tries_left == 1:
                    Be careful now!
                % end
            </p>
        </div>
    </div>
    <div class="centerDiv">
        % if game.name == "Europe":
            <h2 class="headerStyle">Map Quiz - Europe</h2>
        % end
        <img class="imgStyle" src="/static/{{game.current_country}}.jpg" />
    </div>
    <div class="sideDiv">
        <div class="sideWindow topWindows gradient-box">
            <p class="windowTextStyle">You got {{game.right_answers}} / {{len(game.countries)}} right so far!</p>
        </div>
        <div class="sideWindow bottomWindows gradient-box">
            <form class="windowTextStyle" action="/guess/<country>" method="post">
                Type your answer in lowercase:
                <input type="text" name="country" placeholder="enter country..">
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>  
</div>