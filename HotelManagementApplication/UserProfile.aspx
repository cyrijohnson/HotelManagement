<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="HotelManagementApplication.UserProfile" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="Images/user.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>User Profile
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

    <link href="Content/Dashboard/material-dashboard.css" rel="stylesheet" />

    <link href="Content/user profile/demo.css" rel="stylesheet" />
</head>

<body class="dark-edition">
    <form id="form1" runat="server">
        <div class="wrapper ">
            <div class="sidebar" data-color="purple" data-background-color="black" data-image="Images/sidebar-2.jpg">

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
                        <li class="nav-item active">
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
                        <li class="nav-item ">
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
                            <a class="navbar-brand" href="javascript:void(0)">User Profile</a>
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
                                        <h4 class="card-title">Edit Profile</h4>
                                        <p class="card-category">Complete your profile</p>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Company (disabled)</label>
                                                    <input type="text" class="form-control" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Username</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Email address</label>
                                                    <input type="email" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Fist Name</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Last Name</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Adress</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">City</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Country</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Postal Code</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>About Me</label>
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating"></label>
                                                        <textarea class="form-control" rows="5"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
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
        </div>

        <script src="Scripts/jquery-3.2.1.min.js"></script>
        <script src="Scripts/popper.js"></script>
        <script src="Scripts/dashboard/bootstrap-material-design.min.js"></script>
        <script src="https://unpkg.com/default-passive-events"></script>
        <script src="Scripts/dashboard/perfect-scrollbar.jquery.min.js"></script>

        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

        <script src="Scripts/dashboard/chartist.min.js"></script>

        <script src="Scripts/dashboard/bootstrap-notify.js"></script>

        <script src="Scripts/dashboard/material-dashboard.js"></script>

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
