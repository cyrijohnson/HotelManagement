<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="HotelManagementApplication.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/signup/main.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="login-wrap fade-in two wrap-login100">
            
    <form id="form1" runat="server">
    <div id="box">
        <div id="signup">
            <h2>Sign Up</h2>
            <asp:Label class="label" ID="Label1" runat="server" Text=""></asp:Label>
            <div class="form">

                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox1" runat="server" placeholder="First Name" AutoCompleteType="FirstName" CausesValidation="True" ></asp:TextBox>
                  
                </div>
                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox2" runat="server" placeholder="Last Name"></asp:TextBox>
                    
                </div>
                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox3" runat="server" placeholder="E-mail"></asp:TextBox>
                    
            <asp:Label class="label" ID="Label4" runat="server" Text=""></asp:Label>
                    
                </div>
                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox4" runat="server" placeholder="Phone No."></asp:TextBox>
                    
            <asp:Label class="label" ID="Label2" runat="server" Text=""></asp:Label>
                    
                </div>
                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox5" runat="server" placeholder="DOB->DD-MM-YYYY"></asp:TextBox>
                    
                </div>
                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox6" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                    
            <asp:Label class="label" ID="Label5" runat="server" Text=""></asp:Label>
                    
                </div>
                <div class="inputs">
                    <asp:TextBox class="unp" ID="TextBox7" runat="server" TextMode="Password" placeholder="Re-enter Password"></asp:TextBox>
                    
            <asp:Label class="label" ID="Label3" runat="server" Text=""></asp:Label>
                    
                </div>
                <button runat="server" onserverclick="signupclick">Sign Up</button>
                <a href="login.aspx">
                    <p>Already have an account? Login </p>
                </a>
            </div>
        </div>
        
    </div>

    </form>

</div>
        </div>
    </div>
</body>
</html>
