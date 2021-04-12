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
        <jsp:include page="menu.jsp" />
        <div class="conb" style="margin-left: 0%; margin-right: 0%; ">
			<div class="wrapbox-top">
				<p>My Account</p>
			</div>
			<div>
			<form id="formLogin" method="POST" action="loginServlet"> 
					<ul class="formb">
						
						<li class="fromTitle">
						<span style="color: red;">${error}</span>
							<h2>Login</h2>
						</li>
						<li>
							<p>USER NAME</p>
							<input type="text" name="username" class="un" required="">
						</li>
						<li>
							<p>PASSWORD</p>
							<input type="password" name="password" class="ps" required="">
						</li>
						<li>
							<div class="bottomboxa">
								<p>
	                                <button class="login" style="outline: none;" onclick="loginServlet" type="submit">LOGIN</button>
	                            </p>
								<p>
									<input type="checkbox">Remember me	
								</p>
								<p>
	                                <a class="" href="reset.jsp">LOST OR FORGET PASSWORD?</a>
	                            </p>
							</div>
						</li>

					</ul>
				</form>
			</div>
        </div>
        
         <jsp:include page="footer_menu.jsp" />
        
    </body>
</html>
