<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Payment</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<%@include file="components/navbar.jsp"%>


<body>
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">

				<div class="card">

					<%@include file="components/message.jsp"%>
					<div class="card-body px-5">

						<div class="container text-center">
							<img src="image/debit-card.png" style="max-width: 100px;"
								class="img-fluid" alt="">
						</div>
						<div class="card-header bg-secondary text-white mt-3 mb-3">
							<h4>Pay By Using Debit or Credit Card</h4>
						</div>
						<form action="#">


							<div class="form-group">
								<label for="phone" style="color: black !important;"><b>Card
										Number:</b></label> <input name="user_Card" type="number"
									class="form-control" id="cardNumber"
									aria-describedby="cardHelp"
									placeholder="Enter your Card Number Here..!!">
							</div>

							<div class="form-group">
								<label for="expiryDate"><b>Expiry Date of Card:</b></label> <br>
								<input type="date" id="expiryDate" name="expiryDate">
							</div>
							<div class="form-group">
								<label for="phone" style="color: black !important;"><b>CVV
										Number:</b></label> <input name="CVV" type="number" class="form-control"
									id="CVVNumber" aria-describedby="CVVHelp"
									placeholder="Enter your CVV Number Here..!!">
							</div>


							<div class="form-group">
								<label for="name" style="color: black !important;"><b>Card
										Holder Name:</b></label> <input name="user_name" type="text"
									class="form-control" id="name" aria-describedby="nameHelp"
									placeholder="Enter Card Holder Name Here..!!">
							</div>

							<div class="form-group">
								<label for="phone" style="color: black !important;"><b>Amount to be Paid:</b>
								</label> <input name="amount" type="number" class="form-control"
									id="amount" aria-describedby="amountHelp">
							</div>

							<div class="container text-center">
								<a href="login.jsp" class="text-right d-block mb-2">
									<h4 style="color: blue;">Make Payment ...!!</h4>
								</a>
							</div>


						</form>

					</div>

				</div>
			</div>
		</div>
	</div>
</body>

<%@include file="components/footer.jsp"%>
</html>