<!DOCTYPE html>
<html>
    <head>
        <title>Map Quiz</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="author" content="Žiga Gladek">
    </head>

    <style>
        body{
            width: 40%;
            margin: auto;
            background-image: url("/static/background.jpg");
            background-size: cover;
        }
        h1{
            font-size: 150px;
        }
        h2{
            font-size: 50px;
        }
        .headerStyle{
            margin-left: auto;
            margin-right: auto;
            margin-top: 10px;
            height: 60px;
            text-align: center;
            border-radius: 25px;
            background: linear-gradient(to left, #094164, #467565);
            color: white;
        }
        .main{
            width: 1900px;
            height: 1000px;
            margin-left: -520px;
        }
        .centerDiv{
            float: left;
            width: 950px;
            height: 1000px;
        }
        .sideDiv{
            float: left;
            width: 420px;
            height: 1000px;
        }
        .sideWindow{
            display: block;
            width: 350px;
            height: 130px;
            margin-left: auto;
            margin-right: auto;
            padding: 1rem;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 10px;
            border-radius: 25px;
        }
        .gradient-box {
            display: flex;
            align-items: center;
            width: 90%;
            margin: auto;
            max-width: 22em;
            position: relative;
            padding: 30% 2em;
            box-sizing: border-box;
            color: #FFF;
            background: #000;
            background-clip: padding-box;
            /* !importanté */
            border: solid 5px transparent;
            /* !importanté */
            border-radius: 1em;
        }
        .gradient-box:before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: -1;
            margin: -5px;
            /* !importanté */
            border-radius: inherit;
            /* !importanté */
            background: linear-gradient(to left, #094164, #467565);
        }
        .topWindows{
            margin-top: 85px;
        }
        .bottomWindows{
            margin-top: 50px;
        }
        .imgStyle{
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: 35px;
            padding: 1rem;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 10px;
            border-radius: 25px;
        }
        .startMenu{
            text-align: center;
            width: 1000px;
            background: rgba(76, 175, 80, 0.3);
            margin-left: -50px;
            margin-top: 150px;
        }
        .selectButton{
            float: left;
            width: 30%;
            height: 100px;
            display: inline-block;
            font-size: 2vw;
            border: 2px solid #65f02e;
            background: rgba(18, 186, 9);
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            text-transform: uppercase;
            color: #c1d9e6;
            margin-left: 26px;
            margin-top: 20px;
        }
        .selectButton:hover{
            outline: none;
            background: #e3250b;
            color: #24305e;
        }
    </style>

    <body>
        {{!base}}
    </body>
</html>