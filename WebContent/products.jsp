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
       
        <div class="wrapbox-top">
            <p>Products</p>
        </div>

        <div class="container" style="max-width: 100%; height: 71px;">
            <div class="row">
                <div class="col-lg-3">
                    <h1 class="" style="font-size: 2rem;height: 100%;line-height: 71px; margin-left: 0%;">Filter By</h1>
                </div>
                <div class="col-lg-3">
                    <br>
                    <div class="dropdown" style="margin-top: 0%;width:2500px;">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort By</button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Color</a>
                            <a class="dropdown-item" href="#">Price Range</a>
                            <a class="dropdown-item" href="#">Newest</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" >
            <div class="col-lg-3 filter" style="background-color:black;">
                <div class="filter-c"> <a href="">Collection</a></div>
                <div class="filter-c"> <a href="">Price</a></div>
                <div class="filter-c"> <a href="">Color</a></div>
                <div class="filter-c"> <a href="">MultiBuy</a></div>
                <div class="filter-c"> <a href="">Size</a></div>
                <div class="filter-c"> <a href="">Type</a></div>
                <div class="filter-c"> <a href="">Weight</a></div>
            </div>
            <div class="col-lg-9"  style="background-color: black;">
                <div class="row">
                    <div class="col-lg-4  product">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/blue-hibiscus-1.jpg" alt="" >
                        <h4>Blue Hibiscus</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>

                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/abutilon.jpg">
                        <h4>Abutilon</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/acacia.jpg">
                        <h4>Acacia Flower</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/balloon-flower.jpg">
                        <h4>Ballon Flower </h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/bee-balm.jpg">
                        <h4>Bee Balm</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/bergenia.jpg">
                        <h4>Bergenia Flower</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/california-poppy.jpg">
                        <h4>California Poppy </h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/broom.jpg">
                        <h4>Broom Flower</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/calendula.jpg">
                        <h4>Calendula</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/cyclamen.jpg">
                        <h4>Cyclamen Flower</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/canna-lily.jpg">
                        <h4>Canna Lilly</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/cape-leadwort.jpg">
                        <h4>Cape Leadwort</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/colorful-pansies.jpg">
                        <h4>Color Ful Pansies</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/daffodil.jpg">
                        <h4>Daffodils </h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/desert-rose.jpg">
                        <h4>Desert Rose </h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/disa-uniflora.jpg">
                        <h4>Disa Uniflora</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/dotted-pink-cattleya.jpg">
                        <h4>Dotted Pink Cattleya</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/fall-crocus.jpg">
                        <h4>Fall crocus</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/forget-me-not-flower.jpg">
                        <h4>Forget me not Flower</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/four-oclock-flower.jpg">
                        <h4>Four o Clock Flower</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                    <div class="col-lg-4">
                        <a href="goods.jsp" target="view_window"><img class="p-image" src="./Images-Products/flowers/mix/flowering-dogwood.jpg">
                        <h4>Flowering Dodwood</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <p>$50.00</p></a>
                    </div>
                </div>
            </div>
        </div>

      <jsp:include page="footer_menu.jsp" />
        
    </body>
</html>
