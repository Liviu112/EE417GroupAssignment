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

        <div class="&nbsp" style="margin-left: 0%; margin-right: 0%; ">
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
  				<div class="col-md-12"><h3 style="text-align: left">1. Shopping Details</h3></div>
  				<div class="col-md-12"><p style="text-align: left">*Email for order confirmation</p></div>
  				<div class="col-md-12"><input type="text" class="form-control" placeholder="Email" aria-describedby="basic-addon1"></div>
  				<div class="col-md-12"><p style="text-align: left">*First Name</p></div>
  				<div class="col-md-12"><input type="text" class="form-control" placeholder="First Name" aria-describedby="basic-addon1"></div>
  				<div class="col-md-12"><p style="text-align: left">*Last Name</p></div>
  				<div class="col-md-12"><input type="text" class="form-control" placeholder="Last Name" aria-describedby="basic-addon1"></div>
  				<div class="col-md-12"><p style="text-align: left">*Address</p></div>
  				<div class="col-md-12"><input type="text" class="form-control" placeholder="Address" aria-describedby="basic-addon1"></div>
  				<div class="col-md-12"><p style="text-align: left">*City</p></div>
  				<div class="col-md-12"><input type="text" class="form-control" placeholder="City" aria-describedby="basic-addon1"></div>
  				<div class="col-md-6"><p style="text-align: left">*Country</p></div>
  				<div class="col-md-6"><p style="text-align: left">*Region</p></div>

  				<div class="col-md-6">
            <form role="form">
              <div class="form-group">
                <select class="form-control">
                  <option>Ireland</option>
                  <option>England</option>
                </select>
              </div>
            </form>
          </div>

          <div class="col-md-6">
            <form role="form">
              <div class="form-group">
                <select class="form-control">
                  <option>Dublin</option>
                  <option>Galway</option>
                  <option>Limerick</option>
                  <option>Cork</option>
                </select>
              </div>
            </form>
          </div>

		      <div class="col-md-6"><p style="text-align: left">*Postal Code</p></div>
 		      <div class="col-md-6"><p style="text-align: left">*Phone</p></div>
  	      <div class="col-md-6"><input type="text" class="form-control" placeholder="Postal Code" aria-describedby="basic-addon1"></div>
  	      <div class="col-md-6"><input type="text" class="form-control" placeholder="Phone" aria-describedby="basic-addon1"></div>
  	      <div class="col-md-12"><h3 style="text-align: left">2. Delivery Method</h3></div>
  		    <div class="col-md-12">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">Standard Shipping<p>3-5 business days</p>
              </label>
            </div>
          </div>

          <div class="col-md-12">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">Collection Only<p>Cork,Limerick,Galway.</p>
              </label>
            </div>
          </div>
			
          <div class="col-md-12"><h3 style="text-align: left">3. Payment</h3></div>
  	      <div class="col-md-12">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">Cread/Debit Cards
              </label>
            </div>
          </div>

  	      <div class="col-md-12">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">PayPal
              </label>
            </div>
          </div>

  	      <div class="col-md-12"><p style="text-align: left">Your payment is secure</p></div>
  	      <div class="col-md-12"><p style="text-align: left">*Card Number</p></div>
  	      <div class="col-md-12"><input type="text" class="form-control" placeholder="Card Number" aria-describedby="basic-addon1"></div>
  	      <div class="col-md-6"><p style="text-align: left">*Expiration Date</p></div>
  	      <div class="col-md-6"><p style="text-align: left">*Security Code</p></div>
  	      <div class="col-md-6"><input type="text" class="form-control" placeholder="YY/MM" aria-describedby="basic-addon1"></div>
  	      <div class="col-md-6"><input type="text" class="form-control" placeholder="XXX" aria-describedby="basic-addon1"></div>
  	      <div class="col-md-12"><p style="text-align: left">*Code Holder Name</p></div>
  	      <div class="col-md-12"><input type="text" class="form-control" placeholder="Code Holder Name" aria-describedby="basic-addon1"></div>
          
  	      <div class="col-md-12">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">Same as Shipping Adres
              </label>
            </div>
          </div>

          <div class="col-md-12">
            <button type="button" class="btn btn-default btn-xs" style="background: #332C2C; border-color:#332C2C; color: white">&nbsp &nbsp &nbsp &nbsp Confirm &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</button>
          </div>
				  </div>
 					</div>
					</div>	
				</div>
 					
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