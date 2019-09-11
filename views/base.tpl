<!DOCTYPE html>
<html>
    <head>
        <title>Map Quiz</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="author" content="Žiga Gladek">
    </head>

    <style>
        html{
            font-family: "Times New Roman", Times, serif !important;
        }
        body{
            width: 40%;
            margin: auto;
            background-image: url("/static/background.jpg");
            background-size: cover;
        }
        h1{
            font-size: 120px;
        }
        h2{
            font-size: 50px;
        }
        input[type=text]{
            background-color: white;
            border-radius: 4px;
            height: 40px;
            font-size: 30px;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            width: 305px;
            margin-bottom: 50px;
            margin-left: -15px;
            background-position: 10px 10px;
            background-width: 10px;
            background-height: 10px;
            background-repeat: no-repeat;
        }
        .answerText{
            margin-bottom: 15px;
            margin-left: -15px;
        }
        .headerStyle{
            margin-left: auto;
            margin-right: auto;
            margin-top: -20px;
            font-size: 50px;
            height: 60px;
            text-align: center;
            color: white;
        }
        .main{
            width: 1900px;
            height: 1000px;
            margin-left: -520px;
        }
        .main_title{
            height: 20px;
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
            height: 130px;
            margin-left: auto;
            margin-right: auto;
            padding: 1rem;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 10px;
            border-radius: 25px;
        }
        .sideWindow2{
            display: block;
            height: 350px;
            margin-left: auto;
            margin-right: auto;
            padding: 1rem;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 10px;
            border-radius: 25px;
        }
        .windowTextStyle{
            text-align: center;
            font-size: 40px;
            font-weight: bold;
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
        .buttonWrap{
            max-width: 300px;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 3px;
            border-radius: 1em;
        }
        .buttonModule{
            background: #000;
            color: white;
            padding: 10px;
            border-radius: inherit;
        }
        .btn {
            border: none;
            background-color: inherit;
            font-size: 25px;
            cursor: pointer;
            color: white;
            font-weight: bold;
            font-size: 25px;
            display: inline-block;
        }
        .endButtons{
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 30px;
        }
        .btn:hover{
            color: #094164;
        }
        .module-border-wrap-title{
            max-width: 1000px;
            padding: 1rem;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 3px;
            margin-top: 10px;
            border-radius: 1em;
        }
        .module-border-wrap{
            max-width: 800px;
            padding: 1rem;
            position: relative;
            background: linear-gradient(to left, #094164, #467565);
            padding: 3px;
            border-radius: 1em;
        }
        .module{
            background: #000;
            color: white;
            padding: 2rem;
            border-radius: inherit;
        }
        .endWindow{
            height: 400px;
        }
        .startWindow{
            height: 800px;
        }
        .topWindows{
            margin-top: 85px;
        }
        .bottomWindows{
            margin-top: 50px;
        }
        .imgStyle{
            display: block;
            width: 928px;
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
            margin-left: 0px;
            margin-top: 50px;
        }
        .endMenu{
            text-align: center;
            width: 800px;
            height: 700px;
            margin-top: 250px;
            margin-left: 100px;
        }
        .title{
            color: white;
            margin-top: -15px;
        }
        .title2{
            color: white;
            margin-top: -60px;
        }
        .endingText{
            margin-top: -20px;
            color: white;
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