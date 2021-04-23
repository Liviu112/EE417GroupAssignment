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
	<jsp:include page="menu.jsp" />
	<!------ featured products ------>
	<script src="js/effect_loader.js"></script>
	<div id="loader"></div>
	<form id="formLogin" method="POST" action="checkoutServlet">
		<div class="&nbsp" style="margin-left: 0%; margin-right: 0%;">
			<div class="wrapbox-top">
				<p>Goods</p>
			</div>
			<div class="row">
				<div class="col-md-12">&nbsp</div>
				<div class="col-md-12">&nbsp</div>
				<div class="col-md-12">&nbsp</div>
			</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="row">
						<span style="color: red;">${error}</span> <span
							style="color: green;">${status}</span>
						<div class="col-md-12">
							<h3 style="text-align: left">1. Shopping Details</h3>
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*Email for order confirmation</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="email"
								placeholder="Email" aria-describedby="basic-addon1" required="">
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*First Name</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="firstname"
								placeholder="First Name" aria-describedby="basic-addon1"
								required="">
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*Last Name</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="surname"
								placeholder="Last Name" aria-describedby="basic-addon1"
								required="">
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*Address</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="address"
								placeholder="Address" aria-describedby="basic-addon1"
								required="">
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*City</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="city"
								placeholder="City" aria-describedby="basic-addon1" required="">
						</div>
						<div class="col-md-6">
							<p style="text-align: left">*Country</p>
						</div>
						<div class="col-md-6">
							<p style="text-align: left">*Region</p>
						</div>

						<div class="col-md-6">
							<form role="form">
								<div class="form-group">
									<select class="form-control" name="Country">
										<option>Ireland</option>
										<option>England</option>
									</select>
								</div>
							</form>
						</div>

						<div class="col-md-6">
							<form role="form">
								<div class="form-group">
									<select class="form-control" name="region">
										<option>Dublin</option>
										<option>Galway</option>
										<option>Limerick</option>
										<option>Cork</option>
									</select>
								</div>
							</form>
						</div>

						<div class="col-md-6">
							<p style="text-align: left">*Postal Code</p>
						</div>
						<div class="col-md-6">
							<p style="text-align: left">*Phone</p>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="postal"
								placeholder="Postal Code" aria-describedby="basic-addon1"
								required="">
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="phone"
								placeholder="Phone" aria-describedby="basic-addon1" required="">
						</div>
						<div class="col-md-12">
							<h3 style="text-align: left">2. Delivery Method</h3>
						</div>
						<div class="col-md-12">
							<div class="checkbox">
								<label> <input type="checkbox" name="delevery1" value="">Standard
									Shipping
									<p>3-5 business days</p>
								</label>
							</div>
						</div>

						<div class="col-md-12">
							<div class="checkbox">
								<label> <input type="checkbox" name="delevery2" value="">Collection
									Only
									<p>Cork,Limerick,Galway.</p>
								</label>
							</div>
						</div>

						<div class="col-md-12">
							<h3 style="text-align: left">3. Payment</h3>
						</div>
						<div class="col-md-12">
							<div class="checkbox">
								<label> <input type="checkbox" name="cardType1" value="">Cread/Debit
									Cards
								</label>
							</div>
						</div>

						<div class="col-md-12">
							<div class="checkbox">
								<label> <input type="checkbox" name="cardType2" value="">PayPal
								</label>
							</div>
						</div>

						<div class="col-md-12">
							<p style="text-align: left">Your payment is secure</p>
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*Card Number</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="cardNO"
								placeholder="Card Number" aria-describedby="basic-addon1"
								required="">
						</div>
						<div class="col-md-6">
							<p style="text-align: left">*Expiration Date</p>
						</div>
						<div class="col-md-6">
							<p style="text-align: left">*Security Code</p>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="expDate"
								placeholder="YY/MM" aria-describedby="basic-addon1" required="">
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="VID"
								placeholder="XXX" aria-describedby="basic-addon1" required="">
						</div>
						<div class="col-md-12">
							<p style="text-align: left">*Card Holder Name</p>
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="HolderName"
								placeholder="Code Holder Name" aria-describedby="basic-addon1"
								required="">
						</div>

						<div class="col-md-12">
							<div class="checkbox">
								<label> <input type="checkbox" value="">Same as
									Shipping Adres
								</label>
							</div>
						</div>

						<div class="col-md-12">
							<button type="submit" class="btn btn-default btn-xs"
								style="background: #332C2C; border-color: #332C2C; color: white">&nbsp
								&nbsp &nbsp &nbsp Confirm &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="row">
		<div class="col-md-12">&nbsp</div>
		<div class="col-md-12">&nbsp</div>
		<div class="col-md-12">&nbsp</div>
		<div class="col-md-12">&nbsp</div>
		<div class="col-md-12">&nbsp</div>
	</div>

	<jsp:include page="footer_menu.jsp" />

</body>
</html>