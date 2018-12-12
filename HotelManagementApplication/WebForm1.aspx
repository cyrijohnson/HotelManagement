<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HotelManagementApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="Content\loginpage.css" type="text/css" media="screen" />
    <title></title>

    <style type="text/css">
        .auto-style1 {
            margin-left: 74px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <p class="initialspace">
        </p>
        <div id="welcomeimagediv">
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/welcome image.jpeg" />
            <p>
                &nbsp;
            </p>
            <p>
                <asp:TextBox class="inputuandp" ID="TextBox1" runat="server" placeholder="                         Username" BorderStyle="Solid" Width="297px" BorderColor="#000066" ToolTip="Enter Username" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            </p>
            <p class="uandpspace">
            </p>
            <p>
                <asp:TextBox class="inputuandp" ID="TextBox2" runat="server" placeholder="                         Password" BorderStyle="Solid" Width="297px" BorderColor="#000066" ToolTip="Enter Password" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            </p>
            <p class="uandpspace">
            </p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Images/login-button.png" OnClick="ImageButton1_Click" CssClass="auto-style1" Width="154px" />
        </div>

    </form>
</body>
</html>
