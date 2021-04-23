<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>The Garden Center</title>
<jsp:include page="header.jsp" /></head>
<body>
	<!------ featured products ------>
	<jsp:include page="menu.jsp" />

	<script src="js/effect_loader.js"></script>
	<div id="loader"></div>

	<div class="conb" style="margin-left: 0%; margin-right: 0%;">
		<div class="wrapbox-top">
			<p>My Account</p>
		</div>
		<div>
			<form id="formLogin" method="POST" action="loginServlet">
				<ul class="formb">

					<li class="fromTitle"><span style="color: red;">${error}</span>
						<h2>Login</h2></li>
					<li>
						<p>USER NAME</p> <input type="text" name="username" class="un"
						required="">
					</li>
					<li>
						<p>PASSWORD</p> <input type="password" name="password" class="ps"
						required="">
					</li>
					<li>
						<div class="bottomboxa">
							<p>
								<button class="login" style="outline: none;"
									onclick="loginServlet" type="submit">LOGIN</button>
							</p>
							<p>
								<input type="checkbox" name="RememberMe">Remember me
							</p>
							<p>
								<a class="" href="reset.jsp" style="color: red;">LOST OR
									FORGET PASSWORD?</a>
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
