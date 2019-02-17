<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="HotelManagementApplication.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Your Dashboard</title>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="icon" type="image/png" href="Images/dashboard.png">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

    <link href="Content/Dashboard/material-dashboard.css" rel="stylesheet" />
    </head>

<body class="dark-edition">
    <form id="form1" runat="server">
        <div class="wrapper ">
            <div class="sidebar" data-color="purple" data-background-color="black" data-image="Images/sidebar-2.jpg">
                <div class="logo">
                    <asp:Label ID="label1" Text="ISoft" runat="server"  CssClass="simple-text logo-normal" />
                </div>
                <div class="sidebar-wrapper">
                   
                    <ul class="nav">
                        
                        <li class="nav-item active  ">
                            <a class="nav-link" runat="server" onserverclick="dashboardclick">
                                <i class="material-icons">dashboard</i>
                                <p>Dashboard</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" runat="server" onserverclick="userproclick">
                                <i class="material-icons">person</i>
                                <p>User Profile</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" runat="server" onserverclick="managebookingclick">
                                <i class="material-icons">book</i>
                                <p>Manage Bookings</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" runat="server" onserverclick="billingclick">
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
    </form>
</body>
</html>
