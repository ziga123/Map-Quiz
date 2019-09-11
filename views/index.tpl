% rebase('views/base.tpl')
% import model

<div class="startMenu">
    <div class="module-border-wrap">
        <div class="module startWindow">
            <h1 class="title">Map quiz</h1>
            <h2 class="title2">Choose a group of countries!</h2>

            <div class="buttonWrap endButtons">
                <form class="buttonModule" action="new_game/{{model.EUROPE}}" method="post">
                    <button class="btn" type="submit">Europe</button>
                </form>
            </div>

            <div class="buttonWrap endButtons">
                <form class="buttonModule" action="new_game/{{model.AFRICA}}" method="post">
                    <button class="btn" type="submit">Africa</button>
                </form>
            </div>

            <div class="buttonWrap endButtons">
                <form class="buttonModule" action="new_game/{{model.SOUTH_AMERICA}}" method="post">
                    <button class="btn" type="submit">South America</button>
                </form>
            </div>

            <div class="buttonWrap endButtons">
                <form class="buttonModule" action="new_game/{{model.USA}}" method="post">
                    <button class="btn" type="submit">USA</button>
                </form>
            </div>

            <h2 class="startText">This game is meant to improve your geography skills. Get started and have fun!</h2>
        </div>
    </div>
</div>