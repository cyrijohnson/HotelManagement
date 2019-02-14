<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="HotelManagementApplication.loginpage" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Member Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="Images/26-512.png" />
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
    <script src="https://apis.google.com/js/platform.js" async defer></script>
     <meta name="google-signin-client_id" content="310138326208-9v1uupvenerdfgf6bqals4g1mkbfdaam.apps.googleusercontent.com">
    <!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="Images/img-01.png" alt="IMG">
                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                    <span class="login100-form-title">Member Login
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <asp:TextBox class="input100 inputalt" ID="Textbox1" runat="server" type="text" name="email" placeholder="Email" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <asp:TextBox class="input100 inputalt" ID="Textbox2" runat="server" type="password" name="pass" placeholder="Password" />
                        <input type="text" runat="server" id="trans" value=""/>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100"></span>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button Text="Login" runat="server" OnClick="loginclick" class="login100-form-btn" />
                    </div>
                    <div class="g-signin2" data-onsuccess="onSignIn"></div>
                    <a href="#" onclick="signOut();">Sign out</a>
                    <script>
                        function signOut() {
                            var auth2 = gapi.auth2.getAuthInstance();
                            auth2.signOut().then(function () {
                                console.log('User signed out.');
                            });
                        }
                    </script>
                    <div class="text-center p-t-12">
                        <span class="txt1">Forgot
                        </span>
                        <a class="txt2" href="#">Username / Password?
                        </a>
                    </div>
                    <div class="text-center p-t-136">
                        <a class="txt2" href="SignUpPage.aspx">Create your Account			
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <script>
            function onSignIn(googleUser) {
                var profile = googleUser.getBasicProfile();
                console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                console.log('Name: ' + profile.getName());
                console.log('Image URL: ' + profile.getImageUrl());
                console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
                document.getElementById("trans").value = profile.getEmail();
                var name = "cyil";
                var address="johnson"
                PageMethods.ProcessIT(name, address, onSucess, onError);
                function onSucess(result) {
                    alert(result);
                }

                function onError(result) {
                    alert('Something wrong.');
                }

            }
        </script>
        <!--===============================================================================================-->
        <script src="Scripts/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="Scripts/popper.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="Scripts/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="Scripts/tilt.jquery.min.js"></script>
        <script>
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="Scripts/main.js"></script>
        
    </form>
</body>
</html>
