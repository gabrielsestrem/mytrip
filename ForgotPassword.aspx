<%@ Page Language="C#" CodeFile="ForgotPassword.aspx.cs" Inherits="MyTrip.ForgotPassword" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Forgot Password</title>
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
                        <li><a href="SignUp.aspx"><i class="fa fa-address-card-o" aria-hidden="true"></i> Register</a></li> 	
                        <li class="active"><a href="SignIn.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>				
                    </ul>
                </div>
            </div>
        </div> 
	</div>	
	<!--- Navigation Bar Ends -->
			<div class="container">
				<div class="form-horizontal">
					<h2><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Recover Password</h2>
					<hr />
					<h4>Please entrer your email address, we will send you the instructions to reset your password</h4>
					<div class="form-group">
						<asp:Label id="lblEmail" runat="server" CssClass="col-md-2 control-label" Text="Your Email"></asp:Label>
						<div class="col-md-3">
							<asp:TextBox id="tbEmailId" CssClass="form-control" runat="server" placeholder="email@mail.com"></asp:TextBox>	
							<asp:Label ID="lblPassRec" runat="server"></asp:Label>		
							<asp:RequiredFieldValidator id="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="The Email Address is Required!" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>
						</div>
					</div>
					<div class="form-group">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<asp:Button ID="btPassRec" runat="server" Text="Send" CssClass="btn btn-default" OnClick="btPassRec_Click"></asp:Button> 
						<asp:LinkButton ID="LinkButton1" runat="server" href="SignUp.aspx">Register</asp:LinkButton>
					</div>
				</div>
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
