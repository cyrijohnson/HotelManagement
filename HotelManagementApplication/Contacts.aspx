<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="HotelManagementApplication.Contacts" %>


<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>iSoft - Contact</title>

    <link rel="icon" type="image/png" href="Images/i.png">
    <link href="Content/loginpage.css" rel="stylesheet">
    <link href="Content/Contact/contact.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  
    <link href="Content/loginpagemain.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
         <a class="navbar-brand js-scroll-trigger" href="#page-top">iSoft-Make It Possible!</a>
       
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a  class="nav-link js-scroll-trigger" href="landingpage.aspx">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="/About.aspx">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="Help.aspx">Help</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="/Contacts.aspx">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>


    <header class="masthead">
      <div class="container d-flex h-50 align-items-center">
          <h1>Contact Us!</h1>
          <div id="box">
              <h2 class="text-white">Queries Here Please! </h2>
          <div class="text-white-50 mx-auto mt-2 mb-2">Name:</div>
          <div class="wrap-input200 validate-input" data-validate = "*Name required">
						<input class="input200"  type="text" name="name" placeholder="Name">
						<span class="symbol-input200"></span>
					</div>
          <div class="text-white-50 mx-auto mt-2 mb-2">Email:</div>
          <div class="wrap-input200 validate-input" data-validate = "*Valid email required">
						<input class="input200"  type="text" name="email" placeholder="Email">
						<span class="symbol-input200"></span>
					</div>   
              
          <div class="text-white-50 mx-auto mt-2 mb-2">Comment:</div>
              
          <div class="wrap-input200 validate-input">
						<textarea class="input200" name="comment" rows="5" cols="30" placeholder="Write for us!"></textarea>
						<span class="symbol-input200"></span>
					</div>  
                 <div class="mt-3 mb-5"></div>
				<a href="landingpage.aspx" class="text-white button">Submit</a>		
        	</div>
       </div>
    </header>
  </body>
</html>

