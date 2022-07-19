<%

    User user = (User) session.getAttribute("current-user");
	System.out.println("User Session is :"+ user);
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access Checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ordered Page</title>
<%@include file="components/common_css_js.jsp"%>
<link rel="stylesheet" href="css/welocmePage_aboutPage_userPage_Foodbox.css">
<meta name="viewport" content="width=device-width, initial-sclae=1.0">
</head>
<body>
<%@include file="components/navbar.jsp"%>



<div class="about-section">
        <div class="inner-width">
          <h1 style="color:#673ab7!important"><b>Placed-Ordered Details</b></h1>
          <div class="border"></div>
          <div class="about-section-row">
            <div class="about-section-col">
            <%@include file="components/message.jsp" %>
              <div class="about">
                <p>
                  This Foodbox Application has a multiple category for
							selecting and ordering food items. Previously we have a
							restaurant chain, and now, We wish to launch Our Foodbox
							Application, We found out that the online ordering of food items
							with companies, such as Swiggy and Foodpanda were gaining more
							profit by eliminating middle men from the equation. As a result,
							the team decided to Launch an online food delivery web
							application with a rich and user-friendly interface.
                </p>
                
              </div>
            <div class="card mt-2">
            	<h6 style="color:blue;" ><b>We have Placed Your Order...Please remove selection of orders from your Cart....!!!</b></h6>
            </div>
            </div>
            <div class="about-section-col">
            
            <div class="form-group">
            
            
								<label for="EmailIdForOrders"><h4 style="color:red;"><b>Email-Id used for Orders...!!</b></h4> </label> 
								<input name="email"  value ="<%=user.getUserEmail() %> " type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
			</div>
			<div class="about">
            <a href="bill.jsp?emailId=<%=user.getUserEmail() %>" style="color:red;"><b>Click here to see Your Bill...!!!</b></a>
             </div>
  
            </div>
          </div>
        </div>
      </div>


<%@include  file="components/common_modals.jsp" %>
</body>
<%@include file="components/footer.jsp" %>
</html>