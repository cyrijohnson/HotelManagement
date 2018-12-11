<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HotelManagementApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <input id="Reset1" type="reset" value="reset" /></p>
        <asp:LoginName ID="LoginName1" runat="server" />
        <asp:DynamicEntity ID="DynamicEntity1" runat="server">
        </asp:DynamicEntity>
    </form>
    </body>
</html>
