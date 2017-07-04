<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title></title>

    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css" />

    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style>
        body {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }

        hr {
            border-color:#03a855;
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

        .panel {
            border: 1px solid #21ce77;
            border-radius: 0 !important;
            transition: box-shadow 0.5s;
        }

            .panel:hover {
                box-shadow: 5px 0px 40px rgba(0,0,0, .2);
            }

        .panel-footer .btn:hover {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }

        .panel-heading {
            color: #fff !important;
            background-color: #f4511e !important;
            padding: 25px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
        }

        .panel-footer {
            background-color: white !important;
        }

            .panel-footer h3 {
                font-size: 32px;
            }

            .panel-footer h4 {
                color: #aaa;
                font-size: 14px;
            }

            .panel-footer .btn {
                margin: 15px 0;
                background-color: #f4511e;
                color: #fff;
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

            .messagealert {
                width: 100%;
                margin: 0px;
                border: 0;
                z-index: 99999;
                padding: 0;
                font-size: 15px;
            }
        }
    </style>

    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
        }
    </script>

</head>
<body>
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
                            <li class="active"><a href="Login.aspx">LOGIN</a></li>
                            <li><a href="Register.aspx">REGISTER</a></li>

                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <% if (!User.Identity.IsAuthenticated)
                { %>

            <!-- Alert message -->
            <div class="container-fluid">
                <div class="messagealert" id="alert_container"></div>
            </div>

            <!-- Login form -->
            <div class="container">
                <div class="row">

                    <div class="col-xs-12 col-lg-6 col-lg-push-3">
                        <h1 style="font-family:'Lucida Calligraphy'">Login Form</h1>
                        <hr />
                        <div class="panel panel-defult panel-primary">
                            <div class="panel-body">

                                <div class="form-group">
                                    <label for="name">Username</label>
                                    <asp:TextBox ID="tb_username" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="Username is required" CssClass="text-danger" ControlToValidate="tb_username"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <label for="name">Password</label>
                                    <asp:TextBox ID="tb_password" runat="server" class="form-control" placeholder="Username" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is required" CssClass="text-danger" ControlToValidate="tb_password"></asp:RequiredFieldValidator>
                                </div>
                                <br />
                                <div class="form-group" style="text-align: center;">
                                    <asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-success" OnClick="btn_login_Click" />
                                </div>

                            </div>
                        </div>

                        <br />
                        <div style="text-align: center; font-family: 'Lucida Calligraphy'; margin-bottom: 40px;">
                            <h4 style="color: darkorange"><strong>Not have an account yet ? <a href="Register.aspx" style="color: maroon">Register</a> now</strong></h4>
                        </div>

                    </div>

                </div>
            </div>
            <% }
                else
                { %>
            <div class="container" style="text-align: center">
                <h1>You are logged in ! Have Fun ...</h1>
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
