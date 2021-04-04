<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>The Garden Center</title>
        <!-- Google Fonts -->
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <meta name="description" content="" />
        <link rel="stylesheet" type="text/css" href="CSS/loader.css" />
		<link rel="stylesheet" type="text/css" href="CSS/style.css" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Ubuntu" rel="stylesheet">
        <!-- CSS Stylesheets -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/style.css">
        <!-- Font Awesome -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        <!-- Bootstrap Scripts -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <!------ featured products ------>
        <section class="colored-section" id="title">
            <div class="container-fluid" style="padding-top: 40px;padding-bottom: 0px;">
                <!-- Nav Bar -->
                <nav class="navbar navbar-expand-lg navbar-dark">
                    <div class="logo">
                        <a href="index.html"><img src="./Images-Branding/logo.jpg" /></a>
                    </div>
                    <a class="navbar-brand" href="">The Garden Center</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02">
                    <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">HOME</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="products.html">PRODUCTS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">CONTACT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">ABOUT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signin.html">SIGN IN</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="registration.html">REGISTRATION</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </section>
        <div class="conb" style="margin-left: 0%; margin-right: 0%; ">
			<div class="wrapbox-top">
				<p>My Account</p>
			</div>
			<div>
				<ul class="formb">
					<li class="fromTitle">
						<h2>Login</h2>
					</li>
					<li>
						<p>USER NAME</p>
						<input type="text" name="username" class="un">
					</li>
					<li>
						<p>PASSWORD</p>
						<input type="text" name="password" class="ps">
					</li>
					<li>
						<div class="bottomboxa">
							<p>
                                <button class="login" style="outline: none;">LOGIN</button>
                            </p>
							<p>
								<input type="checkbox">Remember me	
							</p>
							<p>
                                <a class="" href="reset.html">LOST OR FORGET PASSWORD?</a>
                            </p>
						</div>
					</li>
					
				</ul>
			</div>
        </div>

        <footer class="footer">
            <div class="containerb">
                <ul>
                    <li>
                        <a href="">Copyright 2021 - The Garden Center</a>
                    </li>
                    <li>
                        <a class="" href="index.html">Home</a>
                        <a class="" href="products.html">Products</a>
                        <a class="" href="contact.html">Contact</a>
                        <a class="" href="about.html">About</a>
                        <a class="" href="registration.html">Registration</a>
                    </li>
                </ul>
            </div>
        </footer>
        
    </body>
</html>
