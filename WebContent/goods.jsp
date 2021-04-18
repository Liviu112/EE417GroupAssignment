<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
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

    <body >
        <!------ featured products ------>
        <jsp:include page="menu.jsp" />
        
		<% HttpSession sess = request.getSession(false);%>
        <div class="conc" style="margin-left: 0%; margin-right: 0%; ">
          <div class="wrapbox-top">
            <p>Goods</p>
          </div>
          

          <div class="row">
  				  <div class="col-md-12">&nbsp</div>
		      </div>

		      <div class="row">
  				  <div class="col-md-2">&nbsp</div>

            <a href="index.jsp" style="color: #000">Home</a>&nbsp&nbsp&nbsp
            <a href="products.jsp" style="color: #000">Products</a>&nbsp&nbsp&nbsp
            <a href="goods.jsp" style="color: #000">Daisy 2</a>&nbsp&nbsp&nbsp

  			  	<div class="col-md-6">&nbsp</div>

            <a href="goods.jsp" style="color: #000">-Prev</a>&nbsp&nbsp&nbsp
            <a href="goods.jsp" style="color: #000">Next-</a>
            <div class="col-md-2">&nbsp</div>
            <div class="col-md-2">&nbsp</div>
		      </div>

          <div class="row">
            <div class="col-md-2">&nbsp</div>
            <div class="col-md-4"><img src="Images-Products/flowers/daisy/54377391_15648e8d18.jpg" width="100%" alt="">         
          </div>

          <div class="col-md-4"><h2 style="text-align : left">Daisy Number 2 5lt</h2>
          <p style="text-align: left">8.95 Price</p>
          <p style="text-align: left">Quantity</p>

        <div class="row">
          <div class="col-md-4">
            <div class="input-group">
              <span class="input-group-btn">
                <button class="btn btn-default"  onclick="decrements()" type="button">-</button>
              </span>
              <input type="text" class="form-control" id="input_number" placeholder="0">
              <span class="input-group-btn">
                <button class="btn btn-default"  onclick="increments()" type="button">+</button>
              </span>
            </div>
          </div>      
        </div>
 		
 		
 		
        <div class="row">
          <div class="col-md-12">&nbsp</div>
        </div>
 		<% if(sess.getAttribute("User")!=null){%> 
        <div class="row">
        	 
        	 <!-- Here data to retrieve from mysql for the basket -->
        	 <!-- fill in the fields below according to the article opened on the page -->
        	<% String namm="calendula"; %>
        	<% int idd=2; %>
        	<% int pricee=8; %>
        	
           <span id="nameflower" style="display:none;"><%= namm %></span> 
           <span id="idflower" style="display:none;"><%= idd %></span> 
           <span id="priceflower" style="display:none;"><%= pricee %></span> 
           
              	
          <div class="col-md-8"><a class="add-cart cart1"><button type="button" onclick='main()' class="btn btn-primary btn-lg" style="background: #332C2C; border-color:#332C2C; " >&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Add to cart &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</button></a>
          </div>
        </div>
         <% } 
         else {%>	
 			  		 		
          <div class="row">
           <div class="col-md-8"><a class="add-cart" href="signin.jsp"><button type="button" class="btn btn-primary btn-lg"  style="background: #332C2C; border-color:#332C2C; " >&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Add to cart &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</button> </a>
           </div>
         </div>
         
         <%};%>
        
        
      </div>
		
      <div class="row">
        <div class="col-md-12">&nbsp</div>
        <div class="col-md-2">&nbsp</div>
        <div class="col-md-4">
          <p style="text-align: left">Other common namesrose 'Daisy Number Two' Family Daisy Number two can be deciduous or semi-evergreen shrubs or scrambling climbers, with usually thorny stems bearing compound pinnate leaves and solitary or clustered flowers. Flowers may be followed by showy red or purple fruits in some varieties. Horticultural GroupClimbing roses are vigorous shrubs with thorny stems and large, solitary or clustered, often fragrant</p>
        </div>
      </div>
  
  		<script src="js/index.js"></script>
      <jsp:include page="footer_menu.jsp" />
	
    </body>
</html>
