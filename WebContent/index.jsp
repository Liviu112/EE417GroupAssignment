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

                <div class="wrapbox-middle">
                	<h1>Wherever life plants you, bloom with grace.</h1>
                </div>
                        <li>
                            <a href="products.jsp">
                            <img src="./Images-Products/flowers/mix/flower.jpg" alt="" />
                            <span>product 1</span>
                            </a>
                        </li>
                        <li>
                            <a href="products.jsp">
                            <img src="./Images-Products/flowers/mix/flower.jpg" alt="" />
                            <span>product 2</span>
                            </a>
                        </li>
                        <li>
                            <a href="products.jsp">
                            <img src="./Images-Products/flowers/mix/flower.jpg" alt="" />
                            <span>product 3</span>
                            </a>
                        </li>
                        <li>
                            <a href="products.jsp">
                            <img src="./Images-Products/flowers/mix/flower.jpg" alt="" />
                            <span>product 4</span>
                            </a>
                        </li>     
                </div>
            </div>

	   <jsp:include page="footer_menu.jsp" />
        
    </body>
</html>
