<%@ Page Language="C#" MasterPageFile="~/DefaultMaster.master" Inherits="MyTrip.Premium" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderDefault" Runat="Server">
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
                                <li class="active"><a href="Premium.aspx"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Buy Premium</a></li>
                            </ul>
                        </li>
                        <li><a href="SignUp.aspx"><i class="fa fa-address-card-o" aria-hidden="true"></i> Register</a></li> 	
                        <li><a href="SignIn.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>				
                    </ul>
                </div>
            </div>
        </div> 
	</div>	
	</form>
		<!--- Navigation Bar End -->
	<br />
		<div class="container">
		<h2><i class="fa fa-download" aria-hidden="true"></i> Premium !</h2>
		<br />

				
			<div class="row">
				<div class="col-lg-6" align="center">
  			<img class="img-rounded" src="images/premium.jpg" alt="logo" width="411" height="392" /> 		
			</div>
			<br />
				<div class="col-lg-6" align="left">
		<h3>MyTripp App, in the first version (1.0), developed in Android, using the Android Studios as the IDE, SQLite DataBase as a data storage. The application is still under implementations, tests and reviews. We are not available for Premium versions yet.</h3> 
               </div>
			</div>
		</div>


</asp:Content>