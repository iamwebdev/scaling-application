<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Scaling Application</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #005077;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }
            
            .links > a {
                color: #005077;
                padding: 0 25px;
                font-size: 17px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        .home{ background: linear-gradient(to bottom, #d66c12 0%, #ffebf5 100%) } 
        </style>
    </head>
    <body class="home">
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    <a href="/view-scale">View Scaling</a>
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    Scaling Application
                </div>

                <div class="links">
                    <p><strong>1. Click on View Scaling link on top right corner to view scaling</strong></p>
                    <p><strong>2. Select Academic Year and click on Search Button </strong></p>
                </div>
            </div>
        </div>
    </body>
</html>
