<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    
    <title>RLS Automation</title>
    <!-- Bootstrap Core CSS -->
    <link href="/html/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="/html/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/html/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="/html/css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<title>RLS TOOL</title>
<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
             <div class="navbar-header">
                <!-- <div class="top-left-part">
                     
                    <a class="logo" href="dashboard.html">
                        
                      <span style="color:blue;"> RLS Tool  </span> </a> 
                </div>  -->
                <!-- /Logo -->
                <ul class="nav navbar-top-links navbar-right pull-right">
                   <!--  <li>
                        <a class="nav-toggler open-close waves-effect waves-light hidden-md hidden-lg"
                            href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li> -->
                    <li>
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> 
                    <span style="color:white; margin-right:300px">RLS TOOL</span></h3>
                            </li>
                    
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
<div class="container-fluid">
         <div class="row">
                    <div class="col-md-12" style ="margin-top:220px;">
                    
	<form action="loginProcess" method="post">

		<table width="20%" bgcolor="0099CC" align="center">
			<div class="container">
			<tr>
				<td colspan=2><center>
						<font size=4><b>Login Here</b></font>
					</center></td>
			</tr>

			<tr>
				<td><label for="uname"><b>Username</b></label></td>
				<td><input type="text" placeholder="Enter Username"
					name="uname"></td>
			</tr>

			<tr>
				<td><label for="psw"><b>Password</b></label></td>
				<td><input type="password" placeholder="Enter Password"
					name="psw"></td>
			</tr>
			<tr>
				<td><Input type="submit" name="submit" id="submit"
					value="submit"></td>
			</tr>
			 <c:out value = "${errormsg}"/> 
			</div>
		
		</table>
	</form>
	
	 
</div>
</div>
</div>
 <!-- /.container-fluid -->
            <footer class="footer text-center"> 2020 &copy; CONNECTED WORLD. CONNECTED EXPERIENCES  @   TechMahindra.com </footer>
        </div>
        <!-- ============================================================== -->
        <!-- End Page Content -->
        <!-- ============================================================== -->
    </div>
    <!-- /#wrapper -->
 <script src="/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/html/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="/html/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="/html/js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="/html/js/custom.min.js"></script>
</body>
</html>