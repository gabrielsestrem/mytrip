<%@ Page Language="C#"%>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>MyTrip</title>
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
                        <li class="active"><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
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
                        <li><a href="SignIn.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>				
                    </ul>
                </div>
            </div>
        </div> 
	</div>	
		<!--- Navigation Bar End -->


        <!-- Carousel -->
				
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/photo71.jpg" alt="..." width="600" height="600">
    </div>
    <div class="item" align="center">
      <img src="images/photo61.jpg" alt="..." width="600" height="600">
     
    </div>
	<div class="item" align="center">
      <img src="images/photo51.jpg" alt="..." width="600" height="600">
     
    </div>				
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

				<!-- Carousel -->

			<br/>
			<br/>
			
			<!-- Middle Contents -->
			<div class="container center">
			<div class="row">
				<div class="col-lg-4">
					<img class="img-circle" src="images/logo.png" alt="logo" width="140" height="140" /> 
					<h2>Aim of the application</h2>
					<p> The necessity to build an Application to record your trips and record photos, comments, ratings, locations, etc emerged last year, after make some trips around South and North America and realized my records was only disorganized photos in my phone’s album.
The purpose of MyTripp App is to keep organized a detailed reminder of the places you have visited. MyTripp App, is in this first version (1.0).</p>
					<p><a class="btn btn-default" href="About.aspx" role="button">View &raquo;</a></p>
					</div>

					<div class="col-lg-4">
					<img class="img-circle" src="images/xamarin.jpg" alt="logo" width="140" height="140" /> 
					<h2>Cross Platform</h2>
					<p> With a C#-shared codebase, we are developping our app using Xamarin tools to write native Android, iOS, and Windows app with native user interfaces and share code across multiple platforms, including Windows and macOS..</p>
					<p><a class="btn btn-default" href="About.aspx" role="button">View &raquo;</a></p>
					</div>

					<div class="col-lg-4">
					<img class="img-rounded" src="images/premium.jpg" alt="logo" width="140" height="140" /> 
					<h2>Get Premium</h2>
					<p>MyTripp App, in the first version (1.0), developed in Android, using the Android Studios as the IDE, SQLite DataBase as a data storage. The application is still under implementations, tests and reviews. We are not available for Premium versions yet.</p> 
						<p><a class="btn btn-default" href="Premium.aspx" role="button">View &raquo;</a></p>
					</div>
				</div>
			</div>
		</form>	
			<!-- Middle Contents -->

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
