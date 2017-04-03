<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>MyTrip Sign Up</title>
    <!-- Bootstrap -->

	<link href="Content/bootstrap.min.css" rel="stylesheet">
	<link href="Content/Custom-Cs.css" rel="stylesheet">
	<link href="Content/font-awesome.min.css" rel="stylesheet" >	
		

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!-- test -->
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <!--test -->

		
</head>
<body>
	<!--- Navigation Bar Start -->
		
	<form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" > <span> <img alt="Logo" src="images/logo.png" height="60" /></span>MyTrip App</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                        <li><a href="About.aspx"><i class="fa fa-address-book-o" aria-hidden="true"></i> About</a></li>
                        <li><a href="Contact.aspx"><i class="fa fa-phone" aria-hidden="true"></i> Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-product-hunt" aria-hidden="true"></i> Products<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header"><i class="fa fa-download" aria-hidden="true"></i> Download</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Download.aspx"><i class="fa fa-android" aria-hidden="true"></i> Android</a></li>
                                <li><a href="Download.aspx"><i class="fa fa-apple" aria-hidden="true"></i> IOS</a></li>
                                <li><a href="Download.aspx"><i class="fa fa-windows" aria-hidden="true"></i> Windows Phone</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header"><i class="fa fa-trophy" aria-hidden="true"></i> Premium</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Premium.aspx"><i class="fa fa-line-chart" aria-hidden="true"></i> Features</a></li>
                                <li><a href="Premium.aspx"><i class="fa fa-share-alt" aria-hidden="true"></i> Share</a></li>
                                <li><a href="Premium.aspx"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Buy Premium</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="SignUp.aspx"><i class="fa fa-address-card-o" aria-hidden="true"></i> Register</a></li> 	
                        <li><a href="SignIn.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>				
                    </ul>
                </div>
            </div>
        </div> 
	</div>	
		<!--- Navigation Bar End -->

		<!--Sign Up -->
			<br />
			<div class="container">
			<div class="form-horizontal">
			<h2><i class="fa fa-address-card-o" aria-hidden="true"></i> Sign Up in MyTrip Web Site</h2>
			<hr/>

			
			<div class="form-group"> 
			<label class="col-xs-11">Username</label>
            <div class="col-md-3">
                <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Usename"></asp:TextBox>
            </div>
			</div>	

            <div class="form-group"> 
			<label class="col-xs-11">Password</label>
			<div class="col-md-3">	
			<asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>	
			</div>
			</div>

			<div class="form-group"> 
			<label class="col-xs-11">Confirm password</label>
			<div class="col-md-3">	
			<asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>	
			</div>
			</div>
				

			<div class="form-group">
			<label class="col-xs-11">Name</label>
			<div class="col-md-3">	
			<asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Full Name"></asp:TextBox>	
			</div>
			</div>
				

			<div class="form-group">				
			<label class="col-xs-11">Email</label>
			<div class="col-md-3">	
			<asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>	
			</div>
			</div>
				

			<div class="form-group"> 					
			<div class="col-xs-11 space-vert">	
			<asp:Button ID="btnSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="btnSignup_Click"/>
			<asp:Label ID="lblMsg" runat="server"></asp:Label>
				
		</div>	
		</div>
		</div>
	</div>
		</form>
		<!--Sign Up -->	

		<!-- Footer -->
			
			 <hr /> 
			
			<footer>  
				<div class="container">
					<p class="pull-right"><a href="#"><i class="fa fa-arrow-up" aria-hidden="true"></i> Back to top</a></p>
					<p>&copy; 2017 MyTrip.com &middot; <a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a> &middot; <a href="About.aspx"><i class="fa fa-address-book-o" aria-hidden="true"></i> About</a> &middot; <a href="Contact.aspx"><i class="fa fa-phone" aria-hidden="true"></i> Contact</a> &middot;  <a href="Download.aspx"><i class="fa fa-download" aria-hidden="true"></i> Download</a> &middot; <a href="Premium.aspx"><i class="fa fa-trophy" aria-hidden="true"></i> Premium</a> &middot;</p>
				</div>
			</footer>
		<!-- Footer -->	

	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
