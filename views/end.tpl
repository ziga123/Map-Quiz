% rebase('views/base.tpl')
% import model

<div class="endMenu">
    <div class="module-border-wrap">
        <div class="module endWindow">
            <h2 class="endingText">
                You got 
                {{game.right_answers}} 
                right answers!
                Would you like to try this continent again or try a different one?
            </h2>

            % if game.name == "Europe":
                <div class="buttonWrap endButtons">
                    <form class="buttonModule" action="/new_game/{{model.EUROPE}}" method="post">
                        <button class="btn" type="submit">Try again</button>
                    </form>
                </div>

            % elif game.name == "Asia":
                <div class="buttonWrap endButtons">
                    <form class="buttonModule" action="/new_game/{{model.ASIA}}" method="post">
                        <button class="btn" type="submit">Try again</button>
                    </form>
                </div>

            % elif game.name == "Africa":
                <div class="buttonWrap endButtons">
                    <form class="buttonModule" action="/new_game/{{model.AFRICA}}" method="post">
                        <button class="btn" type="submit">Try again</button>
                    </form>
                </div>

            % elif game.name == "South America":
                <div class="buttonWrap endButtons">
                    <form class="buttonModule" action="/new_game/{{model.SOUTH_AMERICA}}" method="post">
                        <button class="btn" type="submit">Try again</button>
                    </form>
                </div>

            % elif game.name == "Central America":
                <div class="buttonWrap endButtons">
                    <form class="buttonModule" action="/new_game/{{model.CENTRAL_AMERICA}}" method="post">
                        <button class="btn" type="submit">Try again</button>
                    </form>
                </div>

            % elif game.name == "USA":
                <div class="buttonWrap endButtons">
                    <form class="buttonModule" action="/new_game/{{model.USA}}" method="post">
                        <button class="btn" type="submit">Try again</button>
                    </form>
                </div>
            % end

            <div class="buttonWrap endButtons">
                <form class="buttonModule" action="/" method="USA">
                    <button class="btn" type="submit">Try different one</button>
                </form>
            </div>
        </div>
    </div>
</div>