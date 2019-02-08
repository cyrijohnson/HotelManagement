<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HotelManagementApplication.Dashboard" %>

<!doctype html>
<html lang="en">

<head>
    <title>Welcome User_Name</title>

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
             <asp:Button ID="alttext" runat="server" Text="Click here to configure your hotel." BorderStyle="None" BackColor="Transparent" OnClick="configure_click" />
            <div class="sidebar" data-color="purple" data-background-color="black" data-image="Images/sidebar-2.jpg">
                <div class="logo">
                    <asp:Label ID="label1" Text="ISoft" runat="server"  CssClass="simple-text logo-normal" />
                </div>
                <div class="sidebar-wrapper">
                   
                    <ul class="nav">
                        
                        <li class="nav-item active  ">
                            <a class="nav-link" href="Dashboard.aspx">
                                <i class="material-icons">dashboard</i>
                                <p>Dashboard</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="UserProfile.aspx">
                                <i class="material-icons">person</i>
                                <p>User Profile</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="ManageBookings.aspx">
                                <i class="material-icons">book</i>
                                <p>Manage Bookings</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="BillingandFinance.aspx">
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
            
           
            
            
            
           
            
            <asp:Table id="tiletable" runat="server">
                <asp:TableRow>
                    <asp:TableCell runat="server">
                        <div class="tilefirst" id="tile1">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <div class="tile" id="tile2">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <div class="tile" id="tile3">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                        <div class="tilefirst" id="tile4">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <div class="tile" id="tile5">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <div class="tile" id="tile6">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                        <div class="tilefirst" id="tile7">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <div class="tile" id="tile8">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <div class="tile" id="tile9">
                            <div class="tiletext">
                                Hello
                            </div>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

        <script src="Scripts/dashboard/jquery.min.js"></script>
        <script src="Scripts/dashboard/popper.min.js"></script>
        <script src="Scripts/dashboard/bootstrap-material-design.min.js"></script>
        <script src="https://unpkg.com/default-passive-events"></script>
        <script src="Scripts/dashboard/perfect-scrollbar.jquery.min.js"></script>

        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

        <script src="Scripts/dashboard/chartist.min.js"></script>

        <script src="Scripts/dashboard/bootstrap-notify.js"></script>

        <script src="Scripts/dashboard/material-dashboard.js?v=2.1.0"></script>

        <script src="Scripts/dashboard/demo.js"></script>
        <script>
            $(document).ready(function () {
                $().ready(function () {
                    $sidebar = $('.sidebar');

                    $sidebar_img_container = $sidebar.find('.sidebar-background');

                    $full_page = $('.full-page');

                    $sidebar_responsive = $('body > .navbar-collapse');

                    window_width = $(window).width();

                    $('.fixed-plugin a').click(function (event) {

                        if ($(this).hasClass('switch-trigger')) {
                            if (event.stopPropagation) {
                                event.stopPropagation();
                            } else if (window.event) {
                                window.event.cancelBubble = true;
                            }
                        }
                    });

                    $('.fixed-plugin .active-color span').click(function () {
                        $full_page_background = $('.full-page-background');

                        $(this).siblings().removeClass('active');
                        $(this).addClass('active');

                        var new_color = $(this).data('color');

                        if ($sidebar.length != 0) {
                            $sidebar.attr('data-color', new_color);
                        }

                        if ($full_page.length != 0) {
                            $full_page.attr('filter-color', new_color);
                        }

                        if ($sidebar_responsive.length != 0) {
                            $sidebar_responsive.attr('data-color', new_color);
                        }
                    });

                    $('.fixed-plugin .background-color .badge').click(function () {
                        $(this).siblings().removeClass('active');
                        $(this).addClass('active');

                        var new_color = $(this).data('background-color');

                        if ($sidebar.length != 0) {
                            $sidebar.attr('data-background-color', new_color);
                        }
                    });

                    $('.fixed-plugin .img-holder').click(function () {
                        $full_page_background = $('.full-page-background');

                        $(this).parent('li').siblings().removeClass('active');
                        $(this).parent('li').addClass('active');


                        var new_image = $(this).find("img").attr('src');

                        if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                            $sidebar_img_container.fadeOut('fast', function () {
                                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                $sidebar_img_container.fadeIn('fast');
                            });
                        }

                        if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                            $full_page_background.fadeOut('fast', function () {
                                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                $full_page_background.fadeIn('fast');
                            });
                        }

                        if ($('.switch-sidebar-image input:checked').length == 0) {
                            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                        }

                        if ($sidebar_responsive.length != 0) {
                            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                        }
                    });

                    $('.switch-sidebar-image input').change(function () {
                        $full_page_background = $('.full-page-background');

                        $input = $(this);

                        if ($input.is(':checked')) {
                            if ($sidebar_img_container.length != 0) {
                                $sidebar_img_container.fadeIn('fast');
                                $sidebar.attr('data-image', '#');
                            }

                            if ($full_page_background.length != 0) {
                                $full_page_background.fadeIn('fast');
                                $full_page.attr('data-image', '#');
                            }

                            background_image = true;
                        } else {
                            if ($sidebar_img_container.length != 0) {
                                $sidebar.removeAttr('data-image');
                                $sidebar_img_container.fadeOut('fast');
                            }

                            if ($full_page_background.length != 0) {
                                $full_page.removeAttr('data-image', '#');
                                $full_page_background.fadeOut('fast');
                            }

                            background_image = false;
                        }
                    });

                    $('.switch-sidebar-mini input').change(function () {
                        $body = $('body');

                        $input = $(this);

                        if (md.misc.sidebar_mini_active == true) {
                            $('body').removeClass('sidebar-mini');
                            md.misc.sidebar_mini_active = false;

                            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                        } else {

                            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                            setTimeout(function () {
                                $('body').addClass('sidebar-mini');

                                md.misc.sidebar_mini_active = true;
                            }, 300);
                        }


                        var simulateWindowResize = setInterval(function () {
                            window.dispatchEvent(new Event('resize'));
                        }, 180);


                        setTimeout(function () {
                            clearInterval(simulateWindowResize);
                        }, 1000);

                    });
                });
            });
        </script>
    </form>
</body>

</html>
