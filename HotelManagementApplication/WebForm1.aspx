﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HotelManagementApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:Localize ID="Localize1" runat="server"></asp:Localize>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:CheckBox ID="CheckBox1" runat="server" />
    </form>
</body>
</html>
