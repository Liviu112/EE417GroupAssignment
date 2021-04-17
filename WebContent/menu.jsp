<%@ page import = "java.io.*,java.util.*" %>

<script src="js/index.js"></script>

 <section class="colored-section" id="title" >
   <% HttpSession sess = request.getSession(false);%>
            <div class="container-fluid" style="padding-top: 40px;padding-bottom: 0px;" onload="loadbasket()">
                <!-- Nav Bar -->
                <nav class="navbar navbar-expand-lg navbar-dark">
					<div class="logo">
					    <a href="index.jsp"><img src="./Images-Branding/logo.jpg" /></a>
					</div>
                    <a class="navbar-brand" href="">The Garden Center</a>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="index.jsp">HOME</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="products.jsp">PRODUCTS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="contact.jsp">CONTACT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="about.jsp">ABOUT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="cart.jsp"><span id="bask">Items:  
                                <script type="text/javascript">
                                
                                	if(sessionStorage.getItem("basket")==null)
                                	{
                                		document.write("0")
                                	}
                                	else
                                	{
                                		basket  = sessionStorage.getItem("basket")
                                		document.write(basket)
                                	}
	                                
	                                
                                </script>
                                </span> <ion-icon name="basket"><ion-icon></a>
                            </li>
                            <!-- If the user is logged in -->
                            <% if(sess.getAttribute("User")!=null){%>
                            <li class="nav-item">
                             	<!-- TO DO  -->
                                <a class="nav-link" style="color: #000080;" href=""><%=sess.getAttribute("User").toString()%></a> 
                            </li>
                            <% } else {%>
                            <!-- else show the register or log in options -->
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="signin.jsp">SIGN IN</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="registration.jsp">REGISTRATION</a>
                            </li>
             				<%};%>
                            
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080;" href="registration.jsp"></a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
        <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
        </section>
