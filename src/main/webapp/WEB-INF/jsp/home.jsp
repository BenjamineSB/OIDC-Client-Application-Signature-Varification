<!DOCTYPE html>
<html lang="en">
<head>
	<title>OIDC App</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
<!--===============================================================================================-->
</head>
<body>

<div class="limiter">
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<table class="login100-form validate-form flex-sb flex-w">
					<tr>
						<td>
						<div class="p-t-31 p-b-9">
							<span class="txt1">
								NickName
							</span>
						</div>
						</td>
						<td>
						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="username" value="${nickname}" readonly>
							<span class="focus-input100"></span>
						</div>
						</td>
					</tr>
					<tr>
						<td>	
						<div class="p-t-13 p-b-9">
							<span class="txt1">
								Picture
							</span>
						</div>
						</td>
						<td>
						<div style="text-align: center;">
							<img src="${picture}" alt="Paris" width="300" height="300" style="border-radius: 50%;">
							<span class="focus-input100"></span>
						</div>
						</td>
					</tr>
					<tr>
							<td>
							<div class="p-t-31 p-b-9">
								<span class="txt1">
									Signature Status
								</span>
							</div>
							</td>
							<td>
							<div style="text-align: center;">
								<h3>${verify_status}</h3>
								<div class="container-login100-form-btn m-t-17">
									<a href="/verify" class="login100-form-btn" >Verify JWT</a>
								</div>
								<span class="focus-input100"></span>
							</div>
							</td>
					</tr>
				</table>					
		</div>
	</div>
</div>
			
		
<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<!--	<script src="js/main.js"></script>-->

</body>
</html>