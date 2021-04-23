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
		<!-- <link rel="stylesheet" type="text/css" href="CSS/style2.css" /> -->
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

	   <script src="js/effect_loader.js"></script>
	   <div id="loader"></div>
	   
        <div class="wrapbox-top">
			<p>Contact us</p>
		</div>	

        <div id="wrap" style="margin-left: 0%; margin-right: 0%; padding:0;height: 700px;"> 
            <form id="formContact" method="POST" action="contactForm">
	            <div id="wrapleft">
	                <div class="contact">
	                    <h1>Contact Form</h1>
						<ul class="form">
							<li>
							<span style="color: red; font-size: 15px; ">${error}</span>
	        				<span style="color: green; font-size: 15px;">${status}</span>
								<p>First Name</p>
								<input type="text" name="firstname" class="as" required="">
							</li>
							<li>
								<p>Last Name</p>
								<input type="text" name="lastname" class="as" required="">
							</li>
							<li>
								<p>Phone Number</p>
								<input type="text" name="PhoneNumber" class="as" required="">
							</li>
							<li>
								<p>E-mail</p>
								<input type="text" name="Email" class="as" required="">
							</li>
							<li>
								<p>Message</p>
								<textarea rows="8" cols="65" name="Details" required=""></textarea>
							</li>
							<li></li>
							<button type="submit" class="btn btn-primary btn-lg" style="background: #332C2C;">Submit</button>
						</ul>
	                </div>
				</div>
			</form>
			<div id="wrapright">
				<h1>Contact Details</h1>
				<br>
				<ul class="information">
					<li>
						<i class="iconfont icon-home"></i>
						<div>
							<p>Address</p>
							<br>
							<span>xxxxxxxxxxxxxx, xxxxxxxxxxxxxx<br><br> xxxxxxxxxxxxxx, xxxxxxxxxxxxxx<br><br> xxxxxxxxxxxxxx.<br><br></span>
						</div>
					</li>
					<li>
						<i class="iconfont icon-shouji"></i>
						<div>
							<p>Phone</p>
							<br>
							<span>Office: xxx - xxxxxxxx / xxx - xxxxxxxx<br><br>Fax: xx - xxx - xxxxxxxx <br><br>Mobile: xxx - xxxxxxxx <br><br></span>
						</div>
					</li>
					<li>
						<i class="iconfont icon-youxiang"></i>
						<div>
							<p>E-mail</p>
							<br>
							<span>xxxx@xxxxxx</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
	    <div id="box" style="margin-top:20px;">
	            <script>
	            	let map;

	            	function initMap() 
	            	{
	                map = new google.maps.Map(document.getElementById('box'), 
	                {
	                zoom:15,
	                center: { lat: 53.393, lng: -6.258 },
	                });
                    }
	            </script>
	    </div>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVt4eD0JIC1238JDRy4xmBJW2nCXZftN8&callback=initMap"></script> 

   		<jsp:include page="footer_menu.jsp" />
        
    </body>
</html>
