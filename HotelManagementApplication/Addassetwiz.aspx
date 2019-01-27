<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addassetwiz.aspx.cs" Inherits="HotelManagementApplication.Addassetwiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.Initial
{
  display: block;
  padding: 4px 18px 4px 18px;
  float: left;
 
  color: Black;
  background-color:bisque;
  font-weight: bold;
  border-radius:1em;
}
.Initial:hover
{
   background-color:aqua;
  color: White;
    border-radius:1em;
  
}
#tabb
{
    width:80%;
    align-self:center;
    align-content:center;
}
.Clicked
{
  float: left;
  display: block;
 background-color:red;
  padding: 4px 18px 4px 18px;
  color: Black;
  font-weight: bold;
  color: White;
    border-radius:1em;
}
</style>
</head>
<body style="font-family: tahoma">
  <form id="form1" runat="server">
    <table id="tabb">
      <tr>
        <td>
          <asp:Button Text="Tab 1" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"

              OnClick="Tab1_Click" />
          <asp:Button Text="Tab 2" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"

              OnClick="Tab2_Click" />
          <asp:Button Text="Tab 3" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"

              OnClick="Tab3_Click" />
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                      <span>View 1 </span>
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                      View 2
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    <h3>
                      View 3
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
  </form>
</body>

</html>
