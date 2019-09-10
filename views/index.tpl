% rebase('views/base.tpl')
% import model

<div class="startMenu">
    <h1 style="color: white">Map quiz</h1>
    <h2 style="color: white; margin-top: -80px;font-size: 50px;">Choose a group of countries!</h2>
    <form action="new_game/{{model.EUROPE}}" method="post">
        <button class="selectButton" type="submit">Europe</button>
    </form>
    <form action="new_game/{{model.ASIA}}" method="post">
        <button class="selectButton" type="submit">Asia</button>
    </form>
    <form action="new_game/{{model.AFRICA}}" method="post">
        <button class="selectButton" type="submit">Africa</button>
    </form>
    <form action="new_game/{{model.SOUTH_AMERICA}}" method="post">
        <button class="selectButton" type="submit">South America</button>
    </form>
    <form action="new_game/{{model.CENTRAL_AMERICA}}" method="post">
        <button class="selectButton" type="submit">Central America</button>
    </form>
    <form action="new_game/{{model.USA}}" method="post">
        <button class="selectButton" type="submit">USA</button>
    </form>
    <h2 style="color: white;font-size: 50px;">This game is meant to improve your geography skills. Get started and have fun!</h2>
</div>