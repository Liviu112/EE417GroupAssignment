 <section class="colored-section" id="title">
   <% HttpSession sess = request.getSession(false);%>
            <div class="container-fluid" style="padding-top: 40px;padding-bottom: 0px;">
                <!-- Nav Bar -->
                <nav class="navbar navbar-expand-lg navbar-dark">
					<div class="logo">
					    <a href="index.jsp"><img src="./Images-Branding/logo.jpg" /></a>
					</div>
                    <a class="navbar-brand" href="">The Garden Center</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02">
                    <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">HOME</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="products.jsp">PRODUCTS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">CONTACT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">ABOUT</a>
                            </li>
                            <!-- If the user is logged in -->
                            <% if(sess.getAttribute("User")!=null){%>
                            <li class="nav-item">
                             	<!-- TO DO  -->
                                <a class="nav-link" href=""><%=sess.getAttribute("User").toString()%></a> 
                            </li>
                            <% } else {%>
                            <!-- else show the register or log in options -->
                            <li class="nav-item">
                                <a class="nav-link" href="signin.jsp">SIGN IN</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="registration.jsp">REGISTRATION</a>
                            </li>
             				<%};%>
                            
                            <li class="nav-item">
                                <a class="nav-link" href="registration.jsp"></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </section>