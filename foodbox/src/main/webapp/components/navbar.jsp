<!-- Conditional Rendering for logout Button when user is Logged In -->
<%@page import="com.foodbox.entities.User"%>

<%

User userNavbar =  (User) session.getAttribute("current-user");

%>


<nav class="navbar navbar-expand-lg navbar-light bg-info">
	<div class="container">
		<a class="navbar-brand" href="foodboxWelcome.jsp">Foodbox-App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>

			</ul>

			<ul class="navbar-nav ml-auto">
			
			<!-- For Add Cart Option -->
			<li class="nav-item active"><a class="nav-link"
					href="#!" data-toggle="modal" data-target="#cart"> <i class="fa fa-cart-plus" style="font-size:20px;"></i> <span class="ml-0 cart-items">( 0 )</span> </a></li>
			
			<% 
				if(userNavbar==null){
			%>

				<li class="nav-item active"><a class="nav-link"
					href="login.jsp">Login </a></li>

				<li class="nav-item active"><a class="nav-link"
					href="register.jsp">Register </a></li>
					
				<li class="nav-item active"><a class="nav-link"
					href="aboutUS.jsp">About</a></li>
					
				<li class="nav-item active"><a class="nav-link"
					href="contactUS.jsp">Contact</a></li>
					
			<%
									}else{
										
			%>
				<li class="nav-item active"><a class="nav-link"
					href="<%=userNavbar.getUserType().equals("admin") ? "admin.jsp" : "normalUser.jsp"%>"> <%=userNavbar.getUserName() %> </a></li>

				<li class="nav-item active"><a class="nav-link"
					href="LogoutCtl">Logout</a></li>
					
				<li class="nav-item active"><a class="nav-link"
					href="aboutUS.jsp">About</a></li>
					
				<li class="nav-item active"><a class="nav-link"
					href="contactUS.jsp">Contact</a></li>
			
			<% 						
										}
			
			%>
			</ul>
		</div>
	</div>
</nav>