% import random

<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <div class="mainContainer">
        <h1 class="headerStyle">Žiga's map quiz game for {{name}}!</h1>
        <div class="sideContainer" id="leftContainer">
            <p class="clickTextStyle">Click on {{country}}</p>
        </div>
        <div class="sideContainer" id="rightContainer">
            <p class="counterStyle">You got {{i}} / {{num}} right so far!</p>
        </div>
        % if name == 'europe':
            <img class="imgStyle" src="/static/europe.jpg" alt="" />
        
    </div>
</body>
</html>

<style>
body{
    background-color: #6e6b6b;
}
.mainContainer{
    position: relative;
    padding: 5px;
}
.sideContainer{
    position: relative;
    text-align: center;
    width: 400px;
}
#leftContainer{
    float:left;
}
#rightContainer{
    float:right;
}
.clickTextStyle{
    font-size: 25px;
    font-family: "Times New Roman", Times, serif;
}
.counterStyle{
    font-size: 25px;
    font-family: "Times New Roman", Times, serif;
}
.headerStyle{
    text-align: center;
    font-size: 40px;
    font-family: "Times New Roman", Times, serif;
    z-index: 2;
}
.imgStyle{
    position: absolute;
    text-align: center;
    margin-top: -80px;
    margin-left: 400px;
    z-index: -1;
}
</style>