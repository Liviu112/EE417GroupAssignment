<%@ page import = "java.io.*,java.util.*" %>


 <section class="colored-section" id="title" >
   <% HttpSession sess = request.getSession(false);%>
            <div class="container-fluid" style="padding-top: 40px;padding-bottom: 0px;" onload="loadbasket()">
                <!-- Nav Bar -->
                <nav class="navbar navbar-expand-lg navbar-dark">
					<div class="logo">
					    <a href="index.jsp"><img src="./Images-Branding/logo.jpg" /></a>
					</div>
                    <a class="navbar-brand" style="color: #FF8C00;" href="">The Garden Center</a>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00; font-size: 1.3rem;" href="index.jsp">HOME</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00; width: 115px; font-size: 1.3rem;" href="productsServlet">PRODUCTS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00; font-size: 1.3rem;" href="contact.jsp">CONTACT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00; font-size: 1.3rem;"  href="about.jsp">ABOUT</a>
                            </li>
                            <% if(sess.getAttribute("User")!=null){%>
                            <li class="nav-item bask" >
                                <a class="nav-link" style="color: #000080; font-size: 1.3rem;" href="cart.jsp"><span id="bask">Items: 
                                 <script type="text/javascript">   	
                                 	if(localStorage.getItem("cartNumbers")==null)
                                 	{
                                 		document.write("0")
                                 	}
                                  	else
                                  	{
                                  		
                                  		basket  = localStorage.getItem("cartNumbers");
                                  		document.write(basket);
                                  	} 
                                 </script> 

                                </span> <ion-icon name="basket"><ion-icon></a>
                            </li>
                            <% } else {%>
                            <li class="nav-item bask">
                                <a class="nav-link" style="color: #000080; font-size: 1.3rem; background:#FF8C00;" href="signin.jsp"><span id="bask">Items: 
                                <script type="text/javascript"> document.write("0")  </script> 
                                </span> <ion-icon name="basket"><ion-icon></a>
                            </li>   
                            <%};%>
                            
                             <!-- If the user is logged in -->
                            <% if(sess.getAttribute("User")!=null){%>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00;" href="logoutServlet">Log out <%=sess.getAttribute("User").toString()%></a> 
                            </li>
                            <% } else {%>
                            <!-- else show the register or log in options -->
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00; font-size: 1.3rem;" href="signin.jsp">SIGN IN</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: #000080; background:#FF8C00; width: 200px; font-size: 1.3rem;" href="registration.jsp">REGISTRATION</a>
                            </li>
             				<%};%>
                            
                        </ul>
                    </div>
                </nav>
            </div>
        <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
        </section>
