<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillingandFinance.aspx.cs" Inherits="HotelManagementApplication.BillingandFinance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Welcome User_Name</title>
  <link rel="stylesheet" href="Content/billing/style.css"  media="all" />
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <link rel="icon" type="image/png" href="Images/dashboard.png"/>
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
  <link rel="stylesheet" href="Content/Mngbookings/material-mngbookings.css" />
  <link href="Content/Dashboard/material-dashboard.css" rel="stylesheet" />
  
</head>
<body class="dark-edition">
    <form id="form1" runat="server">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\Images\sidebar-2.jpg">
    
      <div class="logo">
      <asp:Label ID="label1" Text="ISoft" runat="server" CssClass="simple-text logo-normal" />
      </div>
      <div class="sidebar-wrapper">
       <ul class="nav">
                        <li class="nav-item ">
                            <asp:LinkButton ID="LinkButton1" CssClass="nav-link" OnClick="dashclick" runat="server">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
                            </asp:LinkButton>
                        </li>
                        <li class="nav-item">
                            <asp:LinkButton ID="LinkButton2" CssClass="nav-link" OnClick="userproclick" runat="server">
              <i class="material-icons">person</i>
              <p>User Profile</p>
                            </asp:LinkButton>
                        </li>
                        <li class="nav-item ">
                            <asp:LinkButton ID="LinkButton3" CssClass="nav-link" OnClick="managebookingclick" runat="server">
              <i class="material-icons">book</i>
              <p>Manage Bookings</p>
                            </asp:LinkButton>
                        </li>
                        <li class="nav-item active">
                             <asp:LinkButton ID="LinkButton4" CssClass="nav-link" OnClick="billingclick" runat="server">
              <i class="material-icons">book</i>
              <p>Billing and Finance</p>
                            </asp:LinkButton>
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
                            <asp:LinkButton ID="LinkButton5" CssClass="nav-link" OnClick="settingsclick" runat="server">
                                <i class="material-icons">settings</i>
                                <p>Settings</p>
                            </asp:LinkButton>
                        </li>

                    </ul>
      </div>
    </div>
    <div class="main-panel">
        <div id="bill">
      <header class="clearfix">
      <div id="logo">
        <img src="logo.png">
      </div>
      <h1>INVOICE 3-2-1</h1>
      <div id="company" class="clearfix">
        <div>Company Name</div>
        <div>455 Foggy Heights,<br /> AZ 85004, US</div>
        <div>(602) 519-0450</div>
        <div><a href="mailto:company@example.com">company@example.com</a></div>
      </div>
      <div id="project">
        <div><span>PROJECT</span> Website development</div>
        <div><span>CLIENT</span> John Doe</div>
        <div><span>ADDRESS</span> 796 Silver Harbour, TX 79273, US</div>
        <div><span>EMAIL</span> <a href="mailto:john@example.com">john@example.com</a></div>
        <div><span>DATE</span> August 17, 2015</div>
        <div><span>DUE DATE</span> September 17, 2015</div>
      </div>
    </header>
    <main>
      <table>
        <thead>
          <tr>
            <th class="service">SERVICE</th>
            <th class="desc">DESCRIPTION</th>
            <th>PRICE</th>
            <th>QTY</th>
            <th>TOTAL</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="service">Design</td>
            <td class="desc">Creating a recognizable design solution based on the company's existing visual identity</td>
            <td class="unit">$40.00</td>
            <td class="qty">26</td>
            <td class="total">$1,040.00</td>
          </tr>
          <tr>
            <td class="service">Development</td>
            <td class="desc">Developing a Content Management System-based Website</td>
            <td class="unit">$40.00</td>
            <td class="qty">80</td>
            <td class="total">$3,200.00</td>
          </tr>
          <tr>
            <td class="service">SEO</td>
            <td class="desc">Optimize the site for search engines (SEO)</td>
            <td class="unit">$40.00</td>
            <td class="qty">20</td>
            <td class="total">$800.00</td>
          </tr>
          <tr>
            <td class="service">Training</td>
            <td class="desc">Initial training sessions for staff responsible for uploading web content</td>
            <td class="unit">$40.00</td>
            <td class="qty">4</td>
            <td class="total">$160.00</td>
          </tr>
          <tr>
            <td colspan="4">SUBTOTAL</td>
            <td class="total">$5,200.00</td>
          </tr>
          <tr>
            <td colspan="4">TAX 25%</td>
            <td class="total">$1,300.00</td>
          </tr>
          <tr>
            <td colspan="4" class="grand total">GRAND TOTAL</td>
            <td class="grand total">$6,500.00</td>
          </tr>
        </tbody>
      </table>
      <div id="notices">
        <div>NOTICE:</div>
        <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
      </div>
    </main>
    <footer>
      Invoice was created on a computer and is valid without the signature and seal.
    </footer>
      </div>
    </div>
  </div>
        </form>
</body>
</html>
