<!DOCTYPE html>


<html lang="en">
<head>
    <title>Welcome to TATA Steel!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.css" />
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css" />

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

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

        .panel {
            border: 1px solid #f4511e;
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
        }
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="loginform" runat="server">
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
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#product">PRODUCTS</a></li>
                        <li><a href="#gallery">GALLERY</a></li>
                        <li><a href="DDMap.aspx">LOCATIONS</a></li>
                        <li><a href="#contact">CONTACT</a></li>

                        <% If (User.Identity.IsAuthenticated) Then %>
                        <li class="">
                            <a href="#" style="color: gold; font-family: Verdana, Geneva, Tahoma, sans-serif; font-style: italic; font-size: medium">User : <%= User.Identity.Name %></a>
                        </li>

                        <li>
                                <a href="CustomUserProfile.aspx">PROFILE</a>
                            </li>

                        <li>
                            <a href="Logout.aspx">LOGOUT</a>
                        </li>
                        <% Else%>
                        <li class="">
                            <a href="Login.aspx">LOGIN</a>
                        </li>

                        <li class="">
                            <a href="Register.aspx">REGISTER</a>
                        </li>
                        <% End If %>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="jumbotron text-center" style="background-color:#21ce77">
            <h1>Tata Steel</h1>
            <p>Global Steel and Coal Company Pioneering in Steel Manufacturing and Coal Production</p>
        </div>

        <!-- Container (About Section) -->
        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <h2 style="color:#21ce77">About us</h2>
                    <br>
                    <br>
                    <p style="font-family:'Lucida Console'">
                        Founded by Jamsetji Tata in 1868, the Tata group is a global enterprise headquartered in India, comprising over 100 operating companies in seven business sectors: communications and information technology, engineering, materials, services, energy, consumer products and chemicals. The group has operations in more than 100 countries across six continents, and its companies export products and services to 150 countries.The revenue of Tata companies, taken together, was $103.27 billion (around Rs. 624,757 crore) in 2013-14, with 67.2 percent of this coming from businesses outside India. Tata companies employ over 581,470 people worldwide. Brand Finance, a UK-based consultancy firm, valued the Tata brand at $21.1 billion and ranked it 34th among the top 500 most valuable global brands in their BrandFinance® Global 500 2014 report..
          The Tata name has been respected for more than 140 years for its adherence to strong values and the group has always believed in returning wealth to the society it serves. Two-thirds of the equity of Tata Sons, the Tata group holding company, is held by philanthropic trusts that have created national institutions for science and technology, medical research, social studies and the performing arts.
          Anchored in values and strong ethics, Tata companies are building multinational businesses that will achieve growth through excellence and innovation, while balancing the interests of shareholders, employees and civil society. Based on the performance of all Tata Group companies over the years, the Tata brand has come to stand for quality, trust, business leadership, the highest ethical standards and respect for all its stakeholders.
 
                    </p>
                </div>
                <!--<div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>-->
            </div>
        </div>

        <div class="container-fluid bg-grey">
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-globe logo slideanim"></span>
                </div>
                <div class="col-sm-8">
                    <h2 style="color:#21ce77">Our Values</h2>
                    <br>

                    <p style="font-family:'Lucida Console'"><strong>VISION:</strong> Ethical behaviour is intrinsic to the way Tata Steel conducts business and it is part of the Group’s legacy from the Founder Jamsetji Tata, who believed that business must operate in a way that respects the rights of all its stakeholders and creates an overall benefit for society.</p>
                </div>
            </div>
        </div>

        <!-- Container (Services Section) -->
        <div id="product" class="container-fluid text-center">
            <h2 style="color:#21ce77">PRODUCTS</h2>
            <h4>Overview of what we make!</h4>
            <br>
            <div class="row slideanim">
                <div class="col-sm-4">
                    <img src="images/flat-products.jpg" />
                    <h4>Flat products</h4>

                </div>
                <div class="col-sm-4">
                    <img src="images/agricultural-implements.jpg" />
                    <h4>Agricultural implements</h4>
                </div>
                <div class="col-sm-4">
                    <img src="images/construction-products.jpg" />
                    <h4>Construction Product</h4>
                    <p></p>
                </div>
            </div>
            <br>
            <br>
            <div class="row slideanim">
                <div class="col-sm-4">
                    <img src="images/bearings-thumb.jpg" />

                    <h4>Bearings</h4>

                </div>
            </div>
        </div>

        <!-- Container (Portfolio Section) -->
        <!-- Carousel -->
        <div id="gallery" class="container-fluid text-center bg-grey">
            <h2 style="color:#21ce77">Gallery</h2>
            <section class="jk-slider">
                <div id="carousel-example" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example" data-slide-to="1"></li>
                        <li data-target="#carousel-example" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">

                        <div class="item active">
                            <div class="hero">
                                <hgroup>
                                </hgroup>

                            </div>
                            <div class="overlay"></div>
                            <a href="#">
                                <img src="images/pic1.jpg" style="width: 100%; height: 450px;" /></a>

                        </div>
                        <div class="item">
                            <div class="hero">
                                <hgroup>
                                </hgroup>

                            </div>

                            <div class="overlay"></div>
                            <a href="#">
                                <img src="images/Coke-oven-night-view.jpg" style="width: 100%; height: 450px;" /></a>

                        </div>
                        <div class="item">
                            <div class="hero">
                            </div>
                            <div class="overlay"></div>
                            <a href="#">
                                <img src="images/tata-steels.jpg" style="width: 100%; height: 450px;" /></a>
                        </div>
                    </div>

                    <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>

            </section>
        </div>
        <br>


        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

        <!-- Container (Pricing Section) -->


        <!-- Container (Contact Section) -->
        <<div id="contact" class="container-fluid bg-grey">
            <h2 class="text-center" style="color:#21ce77">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span>Jamshedpur,India</p>
                    <p><span class="glyphicon glyphicon-phone"></span>+91 9977665544</p>
                    <p><span class="glyphicon glyphicon-envelope"></span>myemail@something.com</p>
                </div>

            </div>
        </div>

    </form>


    <footer class="container-fluid text-center">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
        <p>© Copyright Tata Steel 2015. All rights reserved. </p>
    </footer>

    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });

            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 600) {
                        $(this).addClass("slide");
                    }
                });
            });
        })
    </script>

</body>
</html>
