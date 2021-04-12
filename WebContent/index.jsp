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

            <div class="cona" style="margin-left: 0%; margin-right: 0%; ">
                <div class="wrapbox-top">
				    <p>Home</p>
			    </div>
                <div class="row">
                    <div class="col-md-12">   
                        <div class="treepage">
                            <div class="treepage-bg" id="treepagebg">
                                <div class="treepagecontent">
                                    <div class="treepagetext">
                                        <h1>Wherever life plants you, bloom with grace</h1>
                                    </div>
                                    <a class="btn btn-success btn-lg treepagebtn" href="products.jsp">view our products</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                   
            </div>
 
            <div class="row" >
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

                <div class="col-md-4">
                    <h3>Safer Shopping at Garden Center</h3>
                    <p style="text-align: left">Our product range has also expanded to include an award winning seed range, young plants, bulbs, seed potatoes, onions and  garlic sets, soft fruit and fruit trees as well as an extensive range of gardening supplies. All have been carefully selected through stringent testing and trials to make gardening a pleasure and a success for our customers. In addition, we also offer a wonderful range of Christmas gifts sent with a personalised card to both the gardeners and non gardeners in your life!.</p>

                    <p style="text-align: left">Following the Covid-19 pandemic, we had to temporarily close our charity shops and cancel traditional fundraising events which has had a major impact on our ability to generate funds.</p>
                </div>

                <div class="col-md-2"></div>

            <div class="row">
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
                <div class="col-md-12">&nbsp</div>
            </div>        

            <div class="row" style="background-color: #2F2828">
                <div class="col-md-12"> &nbsp</div>
                <div class="col-md-12"> &nbsp</div>
                <div class="col-md-2"></div>
            
        <div class="col-md-8">
                <div class="row">
                    <div class="col-xs-6 col-md-6">
                        <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/daisy/54377391_15648e8d18.jpg" width="400" alt="..."><p>Daisy</p></a>
                    </div>

                    <div class="col-xs-6 col-md-6">
                        <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/dandelion/5600240736_4a90c10579_n.jpg" width="400" alt="..."><p>Dandelion</p></a>
                    </div>
                </div>

            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
                    
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/roses/1469726748_f359f4a8c5.jpg" width="400" alt="..."><p>Rose</p></a>
                </div>

                <div class="col-xs-6 col-md-6">
                    <a href="products.jsp" class="thumbnail"><img src="Images-Products/flowers/tulips/8838914676_8ef4db7f50_n.jpg" width="400" alt="..."><p>Tulips</p></a>
                </div> 
            </div>  
        </div>

	   <jsp:include page="footer_menu.jsp" />
        
    </body>
</html>
