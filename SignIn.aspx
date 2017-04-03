<%@ Page Language="C#" Inherits="MyTrip.SignIn" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>
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
		<!--- Navigation Bar End -->

	<!-- Sign In Start -->
	<br />
	<div class="container">
		<div class="form-horizontal">
			<h2><i class="fa fa-sign-in" aria-hidden="true"></i> Login</h2>
			<hr/>		
			<div class="form-group">
				<asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" ><i class="fa fa-user" aria-hidden="true"> Username</i></asp:Label>
				<div class="col-md-3">
					<asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFiledValidatorUserName"	CssClass="text-danger" runat="server" ErrorMessage="The Username is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>	
						</div>		
					</div>
				<div class="form-group">
				<asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" ><i class="fa fa-key" aria-hidden="true"></i> Password</asp:Label>
				<div class="col-md-3">
					<asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFiledValidatorPassword"	CssClass="text-danger" runat="server" ErrorMessage="The Password is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>	
						</div>		
					</div>
				<div class="form-group">
					<div class="col-md-2"></div>
				<div class="col-md-6">
				<asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> 			
				<asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me?"></asp:Label>
						</div>		
					</div>
				<div class="form-group">
					<div class="col-md-2"></div>
				<div class="col-md-6">
				<asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click"></asp:Button> 
				<asp:LinkButton ID="LinkButton1" runat="server" href="SignUp.aspx">Register</asp:LinkButton>
				</div>
				</div>
				<div class="form-group">
				<div class="col-md-2"></div>
				<div class="col-md-6">
				<asp:LinkButton ID="lblForgotPass" runat="server" href="ForgotPassword.aspx">Forgotten your password?</asp:LinkButton>
				</div>
				</div>	
				<div class="form-group">
				<div class="col-md-2"></div>
				<div class="col-md-6">
				<asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
				</div>
				</div>	

		</div>
	</div>
	<!-- Sign In End -->
			
	</form>
	<!-- Footer -->
			<hr /> 
			
			<footer class="footer-pos"> 
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
