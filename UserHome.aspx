<%@ Page Language="C#" Inherits="MyTrip.UserHome" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>MyTrip Welcome!</title>
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
                        <li> 
						<asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Logout" OnClick="btnSignOut_Click"/>
									
						</li> 				
                    </ul>
                </div>
            </div>
        </div> 
	</div>	
		<!--- Navigation Bar End -->
			
                       	
       	<br />
		<br />	
		<div class="container">

			<br />
	
				
			<h3><i class="fa fa-phone" aria-hidden="true"></i> Help us to improve our Application <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>!</h3>
			<div class="row">
				<div class="col-lg-6">
			<h4>Share your feedback with MyTrip Team and we will give you a premium account! </h4>
			<img class="img-rounded" src="images/premium.jpg" alt="logo" width="411" height="392" /> 		
			</div>

			<div class="col-lg-6">
				
    		<!--Contact Form Start -->
			<label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Full Name"></asp:TextBox>
            </div>

			<label class="col-xs-11">Email</label>
			<div class="col-xs-11">	
			<asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="email@mail.com" TextMode="Email"></asp:TextBox>	
			</div>			

			<label class="col-xs-11">Phone</label>
			<div class="col-xs-11">	
			<asp:TextBox ID="tbPhone" runat="server" Class="form-control" placeholder="+xx xx-xxx-xxxx"></asp:TextBox>	
			</div>

			<label class="col-xs-11">Message</label>
			<div class="col-xs-11">	
			<asp:TextBox ID="tbMessage" runat="server" TextMode="MultiLine" Class="form-control" placeholder=""></asp:TextBox>	
			</div>
					
			

			<div class="col-xs-11 space-vert">	
			<asp:Button ID="btnSend" runat="server" Class="btn btn-success" Text="Send" OnClick="btnSend_Click"/>
			<asp:Label ID="lblMsg" runat="server"></asp:Label>
				</div>
			
					
			<label class="col-xs-11 space-vert">MyTrip Company - 85 Airedale St, Auckland, 1010, New Zealand</label>
			<label class="col-xs-11">Phone +64 22 685-1699 <br/> 
			<a href="https://www.facebook.com/MyTripApplication/"><i class="fa fa-facebook-square fa-3x" aria-hidden="true"></i> @MyTripApplication</a>			
						</label>	
			</div>
			<!--Contact Form Ends -->

		</div>
	</div>
	</form>

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
