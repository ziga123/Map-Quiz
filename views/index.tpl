% rebase('views/base.tpl')
% import model

<div class="startMenu">
    <h1 style="color: white">Map quiz</h1>
    <h2 style="color: white; margin-top: -80px;">Choose a group of countries!</h2>
    <form action="new_game" method="post">
        <button class="selectButton" type="submit">Europe</button>
    </form>
    <form action="new_game" method="post">
        <button class="selectButton" type="submit">Asia</button>
    </form>
    <form action="new_game" method="post">
        <button class="selectButton" type="submit">Africa</button>
    </form>
    <form action="new_game" method="post">
        <button class="selectButton" type="submit">South America</button>
    </form>
    <form action="new_game" method="post">
        <button class="selectButton" type="submit">The Americas</button>
    </form>
    <form action="new_game" method="post">
        <button class="selectButton" type="submit">USA</button>
    </form>
    <h2 style="color: white">This game is meant to improve your geography skills. Get started and have fun!</h2>
</div>