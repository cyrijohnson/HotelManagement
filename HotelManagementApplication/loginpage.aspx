<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="HotelManagementApplication.loginpage" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Member Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Images/26-512.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/loginpage/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/loginpage/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/loginpage/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Content/loginpage/hamburgers.min.css">
<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="Content/loginpage/util.css">
	<link rel="stylesheet" type="text/css" href="Content/loginpage/main.css">
<!--===============================================================================================-->

<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Member Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100"  type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="Scripts/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Scripts/popper.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Scripts/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Scripts/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="Scripts/main.js"></script>

</body>
</html>