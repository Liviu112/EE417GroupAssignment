<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>The Garden Center</title>
        <jsp:include page="header.jsp" /><!-- JS Scripts -->
        <script src="js/index.js"></script>
    </head>
    <!------ featured products ------>
        <jsp:include page="menu.jsp" />
        
 	    <script src="js/effect_loader.js"></script>
	    <div id="loader"></div>
		
            <div class="conab" style="margin-left: 0%; margin-right: 0%; ">
                <div class="wrapbox-top">
				    <p>Wherever life plants you, bloom with grace</p>
			    </div>
                <div class="row">
                    <div class="col-md-12">   
                        <div class="treepage">
                            <div class="treepage-bg" id="treepagebg"></div>
                        </div>
                    </div>
                </div>                   
            </div>
 
            <div class="row" style="height: 830px" >
                <div class="col-md-2"></div>
                    <div class="cube">
                        <div class="img1"></div>
                        <div class="img2"></div>
                        <div class="img3"></div>
                        <div class="img4"></div>
                        <div class="img5"></div>
                        <div class="img6"></div>
                    </div>
            
                <div class="col-md-2"></div>

                <div class="col-md-6" style="color: white">
                    <h1>Safer Shopping at Garden Center</h1>
                    <p style="text-align: left; color: white; font-size: 1.5rem; background: #ff523b">Our product range has also expanded to include an award winning seed range, young plants, bulbs, seed potatoes, onions and  garlic sets, soft fruit and fruit trees as well as an extensive range of gardening supplies. All have been carefully selected through stringent testing and trials to make gardening a pleasure and a success for our customers. In addition, we also offer a wonderful range of Christmas gifts sent with a personalised card to both the gardeners and non gardeners in your life!</p>           
                    <a class="btn btn-info" style="font-size: 24px;" href="products.jsp">view our products</a>
                </div>
            </div>
            
          <div class="col-md-12" style="background-color: #2F2828; padding-top:50px">
                <div class="row">
                    <div class="col-xs-6 col-md-6">
                        <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/daisy/54377391_15648e8d18.jpg" width="400" alt="...">
                        <p style="color: #ff523b; font-family: Ubuntu; font-size: 2.5rem; font-weight: bold">Daisy</p></a>
                    </div>

                    <div class="col-xs-6 col-md-6">
                        <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/dandelion/5600240736_4a90c10579_n.jpg" width="400" alt="...">
                        <p style="color: #ff523b; font-family: Ubuntu; font-size: 2.5rem; font-weight: bold">Dandelion</p></a>
                    </div>
                </div>
                    
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/roses/1469726748_f359f4a8c5.jpg" width="400" alt="...">
                    <p style="color: #ff523b; font-family: Ubuntu; font-size: 2.5rem; font-weight: bold">Rose</p></a>
                </div>

                <div class="col-xs-6 col-md-6">
                    <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/tulips/8838914676_8ef4db7f50_n.jpg" width="400" alt="...">
                    <p style="color: #ff523b; font-family: Ubuntu; font-size: 2.5rem; font-weight: bold">Tulips</p></a>
                </div> 
            </div>  
          </div>

	   <jsp:include page="footer_menu.jsp" />
        
    </body>
</html>
