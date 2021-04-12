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
  			  <div class="col-md-2">&nbsp</div>
  			  <div class="col-md-4" style="border-bottom: thin solid #666"><p style="text-align: left">My Cart </p></div>
  		    <div class="col-md-4" style="border-bottom: thin solid #666"><p style="text-align: right">Order Summary</p></div>
  			  <div class="col-md-2">&nbsp</div>
		    </div>
        <div class="row">
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
		    </div>
        <div class="row">
  			  <div class="col-md-2">&nbsp</div>
  			    <div class="col-md-5">
  			      <div class="row">
  				      <div class="col-md-3"><img src="Images-Products/flowers/daisy/54377391_15648e8d18.jpg" width="100%" alt=""></div>
  				      <div class="col-md-3" ><p>Daisy Number Two</p><p>€8.95</p></div>
  					      <div class="col-md-3">
  					    	  <div class="input-group">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button">-</button>
                      </span>
                      <input type="text" class="form-control" placeholder="1">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button">+</button>
                      </span>
                    </div>
                  </div>
  					      <div class="col-md-2">€8.95</div>
				      </div>
            </div>
  				  <div class="col-md-3"><p style="text-align: left">Subtotal €8.95</p>
  				    <p style="text-align: left">Estimata Shipping：€3</p>
  				    <p style="text-align: left" >Total €11.95</p>
  				    <div class="row" style="border-top: thin solid #666">
  					    <div class="col-md-4"></div>
 					      <div class="col-md-8"></div>
				      </div>
				      <div class="row">
  				      <div class="col-md-12">&nbsp</div>
				      </div>

				      <div class="row">
  				      <div class="col-md-8"><a href="checkout.jsp"><button type="button" class="btn btn-primary btn-lg" style="background: #332C2C; border-color:#332C2C;" >&nbsp &nbsp &nbsp &nbsp Checkout &nbsp &nbsp &nbsp &nbsp</button></a></div>
  				      <div class="col-md-4"></div>
				      </div>
            </div>
  			    <div class="col-md-2">&nbsp</div>
		    </div>

        <div class="row">
  		    <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
		    </div>
    
        </div>

        <jsp:include page="footer_menu.jsp" />

    </body>
</html>