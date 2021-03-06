﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Createbookings.aspx.cs" Inherits="HotelManagementApplication.Manage_Bookings.Create_Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Bookings</title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="icon" type="image/png" href="Images/dashboard.png" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Content/Mngbookings/material-mngbookings.css" />
    <link href="../Content/Dashboard/material-dashboard.css" rel="stylesheet" />
    <link href="../Content/CreateBookings/CreateBookings.css" rel="stylesheet" />
</head>

<body class="dark-edition">
    <div class="wrapper ">
        <div class="sidebar" data-color="purple" data-background-color="black" data-image="Images/sidebar-2.jpg">
            <div class="logo">
                <a href="landingpage.aspx" class="simple-text logo-normal">iSoft
                </a>
            </div>
            <div class="sidebar-wrapper">
               
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../Dashboard.aspx">
                            <i class="material-icons">dashboard</i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="../UserProfile.aspx">
                            <i class="material-icons">person</i>
                            <p>User Profile</p>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="../ManageBookings.aspx">
                            <i class="material-icons">book</i>
                            <p>Manage Bookings</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="../BillingandFinance.aspx">
                            <i class="material-icons">printer</i>
                            <p>Billing and Finance</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="./typography.html">
                            <i class="material-icons">poll</i>
                            <p>Smart Manager</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="./icons.html">
                            <i class="material-icons">lock</i>
                            <p>Credential Manager</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="./map.html">
                            <i class="material-icons">android</i>
                            <p>Restaurant Manager</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="./notifications.html">
                            <i class="material-icons">settings</i>
                            <p>Settings</p>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="main-panel">

            <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <a class="navbar-brand" href="javascript:void(0)">Create Bookinng</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="material-icons">notifications</i>
                                    <span class="notification">5</span>
                                    <p class="d-lg-none d-md-block">
                                        Some Actions
                                    </p>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="javascript:void(0)">Mike John responded to your email</a>
                                    <a class="dropdown-item" href="javascript:void(0)">You have 5 new tasks</a>
                                    <a class="dropdown-item" href="javascript:void(0)">You're now friend with Andrew</a>
                                    <a class="dropdown-item" href="javascript:void(0)">Another Notification</a>
                                    <a class="dropdown-item" href="javascript:void(0)">Another One</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:void(0)">
                                    <i class="material-icons">person</i>
                                    <p class="d-lg-none d-md-block">
                                        Account
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">New Booking</h4>
                                    <p class="card-category">Please fill the following details</p>
                                </div>
                                <div class="card-body">
                                    <form runat="server">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">First Name</label>
                                                    <asp:TextBox ID="fname" runat="server" CssClass="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Last Name</label>
                                                    <asp:TextBox ID="lname" runat="server" CssClass="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Room No.</label>
                                                    <asp:TextBox ID="roomno" runat="server" CssClass="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Contact No.</label>
                                                    <asp:TextBox ID="contact" runat="server" CssClass="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Address</label>
                                                    <asp:TextBox ID="flatno" runat="server" CssClass="form-control" placeholder="Flat No." />
                                                    <asp:TextBox ID="streetname" runat="server" CssClass="form-control" placeholder="Street Name" />
                                                    <asp:TextBox ID="City" runat="server" CssClass="form-control" placeholder="City" />
                                                    <asp:TextBox ID="Dist" runat="server" CssClass="form-control" placeholder="District" />
                                                    <asp:TextBox ID="State" runat="server" CssClass="form-control" placeholder="State" />
                                                    <asp:TextBox ID="nationality" runat="server" CssClass="form-control" placeholder="Nationality" />
                                                    <asp:TextBox ID="Pincode" runat="server" CssClass="form-control" placeholder="Pincode" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">No. of Occuapants</label>
                                                    <asp:TextBox ID="noofoccupantsmale" runat="server" CssClass="form-control" placeholder="Male" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating"></label>
                                                    <asp:TextBox ID="noofoccupantsfemale" runat="server" CssClass="form-control" placeholder="Female" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating"></label>
                                                    <asp:TextBox ID="noofoccupantschildren" runat="server" CssClass="form-control" placeholder="Children" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Passport</label>
                                                </div>
                                                <div>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-primary pull-right" />
                                                    <asp:Label ID="lblmessage" runat="server" />
                                                    </div>
                                            </div> 
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Aadhar ID</label>
                                                </div>
                                                <div>
                                                    <asp:FileUpload ID="FileUpload2" runat="server" class="btn btn-primary pull-right"/>
                                                    <asp:Label ID="Label1" runat="server" />
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Other ID</label>
                                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Name of Scanned Document" />
                                                </div>
                                                <div>
                                                    <asp:FileUpload ID="FileUpload3" runat="server" class="btn btn-primary pull-right" />
                                                    <asp:Label ID="Label2" runat="server" />
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Check-in</label>
                                                    <asp:TextBox ID="indate" runat="server" CssClass="form-control" placeholder="Date" />
                                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">PickDate...</asp:LinkButton>
                                                    <asp:Calendar ID="Calendar2" runat="server" Visible="False" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar2_SelectionChanged1" Width="350px">
                                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                        <OtherMonthDayStyle ForeColor="#999999" />
                                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                        <TodayDayStyle BackColor="#CCCCCC" />
                                                    </asp:Calendar>
                                                    <asp:TextBox ID="intime" runat="server" CssClass="form-control" placeholder="Time" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Check-Out</label>
                                                    <asp:TextBox runat="server" ID="checkoutdate" CssClass="form-control" placeholder="Date" />
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">PickDate...</asp:LinkButton>
                                                    <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged1" Width="350px">
                                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                        <OtherMonthDayStyle ForeColor="#999999" />
                                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                        <TodayDayStyle BackColor="#CCCCCC" />
                                                    </asp:Calendar>
                                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Time" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <!-- <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>About Me</label>
                          <div class="form-group">
                            <label class="bmd-label-floating"></label>
                            <textarea class="form-control" rows="5"></textarea>
                          </div>
                        </div>
                      </div>
                    </div> -->
                                        <button type="submit" class="btn btn-primary pull-right" runat="server" onserverclick="Create_Bookings_click">Create Booking</button>
                                        <div class="clearfix"></div>
                                    </form>
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
    </div>
</body>
</html>
