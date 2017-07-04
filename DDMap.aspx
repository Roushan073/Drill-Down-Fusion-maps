<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DDMap.aspx.cs" Inherits="DDMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css" />

    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <script type="text/javascript" src="fusioncharts/fusioncharts.js"></script>
    <script type="text/javascript" src="fusioncharts/themes/fusioncharts.theme.fint.js"></script>
    <style>
        body {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }

        h2 {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }

        h4 {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }

        .jumbotron {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
            font-family: Montserrat, sans-serif;
        }

        .container-fluid {
            padding: 60px 50px;
        }

        .bg-grey {
            background-color: #f6f6f6;
        }

        .logo-small {
            color: #f4511e;
            font-size: 50px;
        }

        .logo {
            color: #f4511e;
            font-size: 200px;
        }

        .thumbnail {
            padding: 0 0 15px 0;
            border: none;
            border-radius: 0;
        }

            .thumbnail img {
                width: 100%;
                height: 100%;
                margin-bottom: 10px;
            }

        .carousel-control.right, .carousel-control.left {
            background-image: none;
            color: #f4511e;
        }

        .carousel-indicators li {
            border-color: #f4511e;
        }

            .carousel-indicators li.active {
                background-color: #f4511e;
            }

        .item h4 {
            font-size: 19px;
            line-height: 1.375em;
            font-weight: 400;
            font-style: italic;
            margin: 70px 0;
        }

        .item span {
            font-style: normal;
        }

            .panel:hover {
                box-shadow: 5px 0px 40px rgba(0,0,0, .2);
            }


        .navbar {
            margin-bottom: 0;
            background-color: #f4511e;
            z-index: 9999;
            border: 0;
            font-size: 12px !important;
            line-height: 1.42857143 !important;
            letter-spacing: 4px;
            border-radius: 0;
            font-family: Montserrat, sans-serif;
        }

            .navbar li a, .navbar .navbar-brand {
                color: #fff !important;
            }

        .navbar-nav li a:hover, .navbar-nav li.active a {
            color: #f4511e !important;
            background-color: #fff !important;
        }

        .navbar-default .navbar-toggle {
            border-color: transparent;
            color: #fff !important;
        }

        footer .glyphicon {
            font-size: 20px;
            margin-bottom: 20px;
            color: #f4511e;
        }

        .slideanim {
            visibility: hidden;
        }

        .slide {
            animation-name: slide;
            -webkit-animation-name: slide;
            animation-duration: 1s;
            -webkit-animation-duration: 1s;
            visibility: visible;
        }

        @keyframes slide {
            0% {
                opacity: 0;
                transform: translateY(70%);
            }

            100% {
                opacity: 1;
                transform: translateY(0%);
            }
        }

        @-webkit-keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateY(70%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }

        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }

            .btn-lg {
                width: 100%;
                margin-bottom: 35px;
            }
        }

        @media screen and (max-width: 480px) {
            .logo {
                font-size: 150px;
            }

        }
    </style>
    <script>
        FusionCharts.ready(function () {
            var populationMap = new FusionCharts({
                type: 'maps/world',
                renderAt: 'chart-container',
                "width": "100%",
                height: '700',
                dataFormat: 'jsonurl',

                dataSource: "Data/World.json"
            });
            populationMap.configureLink([
                {
                    "type": "maps/asia"
                },
                {
                    "type": "maps/india"
                },
                {
                    "type": "maps/jharkhand"
                },
                {
                    type: "mscolumn3d"
                }
            ]);
            populationMap.render();
        });
    </script>

</head>
<body style="background-color: white">

    <form id="form1" runat="server">
        <div>
            <!-- Navigation Bar -->
            <nav class="navbar" style="background-color: #08af5b">
                <div class="container">
                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar" style="background-color: #303030"></span>
                            <span class="icon-bar" style="background-color: #303030"></span>
                            <span class="icon-bar" style="background-color: #303030"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                            <img src="images/logo1.jpg" />
                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="HomePage.aspx">HOME</a></li>
                            <li><a href="HomePage.aspx#product">PRODUCTS</a></li>
                            <li><a href="HomePage.aspx#gallery">GALLERY</a></li>
                            <li><a href="DDMap.aspx">LOCATIONS</a></li>
                            <li><a href="HomePage.aspx#contact">CONTACT</a></li>
                            <% if (User.Identity.IsAuthenticated)
                                { %>
                            <li class="">
                                <a href="#" style="color:darkblue; font-family: Verdana, Geneva, Tahoma, sans-serif; font-style: italic; font-size: medium">User : <%= User.Identity.Name %></a>
                            </li>

                            <li>
                                <a href="CustomUserProfile.aspx">PROFILE</a>
                            </li>

                            <li>
                                <a href="Logout.aspx">LOGOUT</a>
                            </li>
                            <% }
                                else
                                {%>
                            <li class="">
                                <a href="Login.aspx">LOGIN</a>
                            </li>

                            <li class="">
                                <a href="Register.aspx">REGISTER</a>
                            </li>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </nav>

            <% if (User.Identity.IsAuthenticated)
                { %>


            <!-- Drill Down Map -->
            <div class="container" style="text-align: center;margin-bottom:40px;margin-top:50px;" >
                <div class="row">
                    <div class="panel" style="border-color: #21ce77">
                        <div class="panel-heading" style="font-family:'Lucida Calligraphy';color:#000000;background-color: #21ce77";>
                            Drill Down Map
                        </div>

                        <div class="panel-body">
                            <div id="chart-container">A world map will load here!</div>
                        </div>
                    </div>
                </div>
            </div>

            <% }
                else
                { %>

            <div class="container" style="text-align: center;">
                <h1>You have to login to access this page !</h1>
                <hr />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success" OnClick="Button1_Click" />
            </div>

            

            <% } %>

            <!-- footer -->

            <footer class="container-fluid text-center">

                <p>© Copyright Tata Steel 2015. All rights reserved. </p>
            </footer>





        </div>
    </form>
</body>
</html>
