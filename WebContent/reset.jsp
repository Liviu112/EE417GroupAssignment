<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>The Garden Center</title>
<jsp:include page="header.jsp" /></head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="conb" style="margin-left: 0%; margin-right: 0%;">
		<div class="wrapbox-top">
			<p>Reset Password</p>
		</div>
		<div>
			<ul id="cab" class="formb">
				<li class="fromTitle">
					<h5>Lost your password? Please enter your email address. You
						will receive a link to create a new password.</h5>
				</li>
				<li>
					<p>EMAIL ADDRESS</p> <input type="text" name="UserName" class="ps">
				</li>
				<li>
					<div class="bottomboxa">
						<p>
							<button class="login" style="outline: none;">RESET</button>
						</p>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<jsp:include page="footer_menu.jsp" />

</body>
</html>
