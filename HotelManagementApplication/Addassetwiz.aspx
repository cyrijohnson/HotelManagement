<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addassetwiz.aspx.cs" Inherits="HotelManagementApplication.Addassetwiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Asset Wizard</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="icon" type="image/png" href="Images/dashboard.png" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Content/AddAssetWiz/Main.css" />
    <link href="Content/Dashboard/material-dashboard.css" rel="stylesheet" />

</head>
<body class="dark-edition">
    <form runat="server">
        <div class="wrapper ">
            <div id="tablebox">
                <table id="tabb" runat="server">
                    <tr>
                        <td>
                            <asp:Button Text="Complete Address" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                                OnClick="Tab1_Click" />
                            <asp:Button Text="Agency and Rooms" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                                OnClick="Tab2_Click" />
                            <asp:Button Text="Room Configuration" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                                OnClick="Tab3_Click" />
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid" runat="server">
                                        <tr>
                                            <td>
                                                <div class="main-panelA">
                                                    <div class="content">
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <div class="card">
                                                                        <div class="card-header card-header-primary">
                                                                            <h4 class="card-title">Address</h4>
                                                                            <p class="card-category">Complete your profile</p>
                                                                        </div>
                                                                        <div class="card-body">

                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Hotel Name</label>
                                                                                        <asp:TextBox ID="tb1" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Care of</label>
                                                                                        <asp:TextBox ID="tb2" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Building Name/Number</label>
                                                                                        <asp:TextBox ID="tb3" runat="server" type="email" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Street Name</label>
                                                                                        <asp:TextBox ID="tb4" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Locality</label>
                                                                                        <asp:TextBox ID="tb5" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">City</label>
                                                                                        <asp:TextBox ID="tb6" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">District</label>
                                                                                        <asp:TextBox ID="tb7" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">State</label>
                                                                                        <asp:TextBox ID="tb8" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Postal Code</label>
                                                                                        <asp:TextBox ID="tb9" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <button type="submit" runat="server" onserverclick="address_click" class="btn btn-primary pull-right" runat="server">Update Address</button>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <script>
                                                        const x = new Date().getFullYear();
                                                        let date = document.getElementById('date');
                                                        date.innerHTML = '&copy; ' + x + date.innerHTML;
                                                    </script>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <div class="main-panelA">
                                                    <div class="content">
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <div class="card">
                                                                        <div class="card-header card-header-primary">
                                                                            <h4 class="card-title">Basic Information</h4>
                                                                            <p class="card-category">Please complete the following</p>
                                                                        </div>
                                                                        <div class="card-body">

                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Total number of rooms</label>
                                                                                        <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Advertised in </label>
                                                                                        <asp:CheckBox ID="checkbox1" runat="server" Text="    bookings.com" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Advertised in </label>
                                                                                        <asp:CheckBox ID="checkbox2" runat="server" Text="    agoda.com" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Advertised in </label>
                                                                                        <asp:CheckBox ID="checkbox3" runat="server" Text="    trivago.com" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Advertised in </label>
                                                                                        <asp:CheckBox ID="checkbox4" runat="server" Text="    oyorooms.com" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <button type="submit" runat="server" onserverclick="adddata_click" class="btn btn-primary pull-right">Update Information</button>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <script>
                                                        const x = new Date().getFullYear();
                                                        let date = document.getElementById('date');
                                                        date.innerHTML = '&copy; ' + x + date.innerHTML;
                                                    </script>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <div class="main-panelA">
                                                    <div class="content">
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <div class="card">
                                                                        <div class="card-header card-header-primary">
                                                                            <h4 class="card-title">Categories</h4>
                                                                            <p class="card-category">Please keyin the categories and the number of rooms</p>
                                                                        </div>
                                                                        <div class="card-body">

                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Total number of rooms</label>
                                                                                        <asp:TextBox ID="TextBox2" runat="server" type="text" class="form-control" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="col-md-10">
                                                                                    <div class="form-group">
                                                                                        <label class="bmd-label-floating">Enter the category names and Number of Rooms</label>
                                                                                        <hr />
                                                                                        
                                                                                        <asp:Panel ID="pnlTextBoxes" runat="server">
                                                                                        </asp:Panel>
                                                                                      
                                                                                        <hr />
                                                                                    </div>
                                                                                </div>
                                                                                 </div>
                                                                            <asp:Button ID="btnAdd" runat="server" Text="Add New" OnClick="AddTextBox" />
                                                                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="Save" />
                                                                            <button type="submit" runat="server" onserverclick="complete_click" class="btn btn-primary pull-right">Complete Configuration</button>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <script>
                                                        const x = new Date().getFullYear();
                                                        let date = document.getElementById('date');
                                                        date.innerHTML = '&copy; ' + x + date.innerHTML;
                                                    </script>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
