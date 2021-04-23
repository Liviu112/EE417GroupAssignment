<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
     <% HttpSession sess = request.getSession(false);%>
        <meta charset="utf-8">
        <title>The Garden Center</title>
       <jsp:include page="header.jsp" />
    </head>
    <body >
        <!------ featured products ------>
        <jsp:include page="menu.jsp" />
        
        <script src="js/effect_loader.js"></script>
	    <div id="loader"></div>
		
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

		    </div>
        
        <div class="row" >
        <div class="left" style="min-width:1500px;padding-left:250px;float:left;">

        	

		</div>
			
            <div class="products-container" style="margin-top:50px;margin: auto;">
				
				<div class="product-header" style="margin-left:-200px; max-width: 800px;display: flex;margin-bottom:10px;border-bottom:3px solid lightgrey; ">
						
						<h5 class="product-title" style="width:100%;margin-right:200px;">PRODUCT</h5>
						<h5 class="price" style="width:15%;margin-right:200px;display:flex;">PRICE</h5>
						<h5 class="quantity" style="width:15%;;margin-right:200px;display:flex;">QUANTITY</h5>
						<h5 class="total" style="width:15%;">TOTAL</h5>
				</div>		
						<div class="products" style="margin-left:-320px;">
						
						</div>
				
			
			</div>			
                   

            <div class="right" style="padding-left:200px;min-width:2000px;display:flex;">
  				  <div class="col-md-3">
  				  
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
		    
		    <div class="change" style="margin : 0; padding-left:100px;padding-top:20px;">
				      <span style="min-width:300px;float:left;">Change the quantity of an article : name of the article to remove : </span>
				      <input type="text" placeholder="Name of product" name="nameproduct" id="nameproduct" style="float:left;margin-left:20px;padding-left:10px;">
  				      <span style="float:left;">quantity to be removed or added</span>
				      <input type="text" placeholder="-2 or +3" name="qtt" id="qtt" style="margin-left:20px;padding-left:10px;float:left;"></input>
  				     <div style="float:left; padding-left:10px;"> <button type="button" onclick="changebasket()"  style="margin-bottom:30px;background: #8BF53C; border-color:#332C2C;float:left;" >&nbsp &nbsp Change &nbsp &nbsp</button></div>  
			</div>
			
			<div class="clear" style="margin : 0; padding-left:100px;">
				      <a href="products.jsp" style="color:#5f5f5f;" onclick="clearbasket()">(Or clear the basket)</a>
			</div>
			
			

        <div class="row">
  		    <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
  			  <div class="col-md-12">&nbsp</div>
		    </div>
    
        </div>
        <script src="js/index.js"></script>
        <jsp:include page="footer_menu.jsp" />

    </body>
</html>