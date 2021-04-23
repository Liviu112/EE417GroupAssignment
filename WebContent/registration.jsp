<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>The Garden Center</title>
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <!------ featured products ------>
       <jsp:include page="menu.jsp" />
       
       <script src="js/effect_loader.js"></script>
	   <div id="loader"></div>
       
        <div id="conca" class="conb" style="margin-left: 0%; margin-right: 0%; ">
        	<div class="wrapbox-top">
        		<p>Request an Account</p>
        	</div>
        	<div>
        		<form id="formLogin" method="POST" action="registrationServlet">
        			
	        		<ul id="caa" class="formb" style="height: 1150px;">
	        			<li class="fromTitle">
	        			<span style="color: red;">${error}</span>
	        			<span style="color: green;">${status}</span>
	        				<h2>Register</h2>
	        			</li>
	        			<li>
	        				<p>FIRSTNAME</p>
	        			<input type="text" name="firstname" class="ps">
	        			</li>
	        			<li>
	        				<p>SURNAME</p>
	        			<input type="text" name="surname" class="ps">
	        			</li>		        			
	        			<li>	        			
	        				<p>USER NAME</p>
	        				<input type="text" name="uname" class="ps">
	        			</li>
	        			<li>
	        				<p>PASSWORD</p>
	        				<input type="password" name="pwd" class="ps">
	        			</li>
						<li>
							<p>CHECK PASSWORD</p>
							<input type="password" name="Check PassWord" class="ps">
						</li>
						<li>
							<p>PHONE NUMBER</p>
							<input type="text" name="phone" class="ps">
						</li>
						<li>
							<p>EMAIL ADDRESS</p>
							<input type="text" name="email" class="ps">
						</li>
	        			<li>
	        				<p>ADDRESS</p>
	        			<input type="text" name="address" class="ps">
	        			</li>							
						<li>
							<p>POSTAL</p>
							<input type="text" name="postal" class="ps">
						</li>
	        			<li>
	        				<p>TOWN</p>
	        			<input type="text" name="town" class="ps">
	        			</li>
	        			<li>
	        				<p>COUNTY</p>
	        			<input type="text" name="county" class="ps">
	        			</li>						
	        			<li>
	        				<div class="bottomboxa">
	        					<p><button class="logina" type="submit" style="outline: none;">REGISTER</button></p>
	        				</div>
	        			</li>
	        		</ul>
        		</form>
        	</div>
        </div>

        <jsp:include page="footer_menu.jsp" />
    
    </body>
</html>
