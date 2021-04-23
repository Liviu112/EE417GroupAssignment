<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>The Garden Center</title>
        <jsp:include page="header.jsp" /> </head>
    <body>
        <!------ featured products ------>
       <jsp:include page="menu.jsp" />

	   <script src="js/effect_loader.js"></script>
	   <div id="loader"></div>
	   
        <div class="wrapbox-top">
			<p>Contact us</p>
		</div>	

        <div id="wrap" style="margin-left: 0%; margin-right: 0%; padding:0;height: 700px;"> 
            <form id="formContact" method="POST" action="contactForm"  style="margin-left: 100px">
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
