<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>The Garden Center</title>
<jsp:include page="header.jsp" />
</head>
<body>
	<!------ featured products ------>
	<jsp:include page="menu.jsp" />

	<script src="js/effect_loader.js"></script>
	<div id="loader"></div>

	<div class="wrapbox-top">
		<p>Products</p>
	</div>
	<div class="container mt-3">
		<div class="row">
			<div class="col-12">
				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleControls" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleControls" data-slide-to="1"></li>
						<li data-target="#carouselExampleControls" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100"
								src="Images-Products/flowers/mix/abutilon.jpg" alt="First slide">
							<div class="carousel-caption d-none d-md-block">
								<h4>Abutilon&nbsp;</h4>
								<p>Blessings from afar</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="Images-Products/flowers/mix/desert-rose.jpg"
								alt="Second slide">
							<div class="carousel-caption d-none d-md-block">
								<h4>desert-rose</h4>
								<p>A symbol of strength</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="Images-Products/flowers/mix/canna-lily.jpg"
								alt="Third slide">
							<div class="carousel-caption d-none d-md-block">
								<h4>canna-lily&nbsp;</h4>
								<p>Solid future</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		<hr>
	</div>

	<div class="container" style="max-width: 100%; height: 71px;">
		<div class="row">
			<div class="col-lg-3">
				<h1 class=""
					style="font-size: 2rem; height: 100%; line-height: 71px; margin-left: 0%;">Filter
					By</h1>
			</div>
			<div class="col-lg-3">
				<br>
				<div class="dropdown" style="margin-top: 0%; width: 2500px;">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Sort By</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#" onclick="sortList()">NAME
							A-Z</a> <a class="dropdown-item" href="#">Price Range</a> <a
							class="dropdown-item" href="#">Newest</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-3 filter" style="background-color: black;">
			<div class="filter-c">
				<a href="Filter.jsp">Collection</a>
			</div>
			<div class="filter-c">
				<a href="Filter.jsp">Price</a>
			</div>
			<div class="filter-c">
				<a href="Filter.jsp">Color</a>
			</div>
			<div class="filter-c">
				<a href="Filter.jsp">MultiBuy</a>
			</div>
			<div class="filter-c">
				<a href="Filter.jsp">Size</a>
			</div>
			<div class="filter-c">
				<a href="Filter.jsp">Type</a>
			</div>
			<div class="filter-c">
				<a href="Filter.jsp">Weight</a>
			</div>
		</div>
		<div class="col-lg-9" style="background-color: black;">
			<div class="row" id="row">
				<% HttpSession sess = request.getSession(false);
                         List<String> ProductName = new ArrayList<String>((ArrayList<String>)sess.getAttribute("ProductName"));
                         List<String> ImageLocation = new ArrayList<String>((ArrayList<String>)sess.getAttribute("ImageLocation"));
                         List<Float> Price = new ArrayList<Float>((ArrayList<Float>)sess.getAttribute("Price"));
                         %>
				<%for(int i=0; i<21; i++){ %>
				<div class="col-lg-4  product">
					<a href="goods.jsp" target="view_window"><img class="p-image"
						id="pimg" src=<%=ImageLocation.get(i)%> alt=""> <%if(sess.getAttribute("ProductName")!=null){ %>
						<h4><%=ProductName.get(i)%></h4>
						<%} %>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<p>
							$
							<%=Price.get(i)%></p></a>
				</div>
				<%}; %>
			</div>
		</div>
	</div>


	<jsp:include page="footer_menu.jsp" />
	<script src="js/sort.js"></script>

</body>
</html>
