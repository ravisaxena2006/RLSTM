<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<script src="/js/jquery.min.js"></script>
  <style>
.disabled {
        pointer-events: none;
        cursor: default;
    }
</style>
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
                <div class="top-left-part">
                     <!-- Logo -->
                    <a class="logo" href="dashboard.html">
                        
                      <span style="color:blue;"> Menu </span> </a> 
                </div>
                <!-- /Logo -->
                <ul class="nav navbar-top-links navbar-right pull-right">
                   <!--  <li>
                        <a class="nav-toggler open-close waves-effect waves-light hidden-md hidden-lg"
                            href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li> -->
                    <li>
                    <h2><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> 
                    <span style="color:white; margin-right:180px">RLS TOOL</span></h2>
                            </li>
                            <li>
                    <h4><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> 
                    <span style="color:white; margin-right:150px">Welcome ${sessionScope.name}</span></h4>
                            </li>
                    

    <li>
                    <a href="/logout">Logout</a>
                            </li>


                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <!-- <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span
                            class="hide-menu">RLS AUTOMATION Tool</span></h3> -->
                </div>
            <ul class="nav" id="side-menu">
               
		 			        
		                     
		                   <li style="padding: 70px 0 0;">
		                        <a href="/view" class="waves-effect"><i class="fa fa-clock-o fa-fw"
		                                aria-hidden="true"></i>Bid Manager</a>
		                    </li>
		                    <c:if test="${sessionScope.roleName=='Bid Manager' || sessionScope.roleName=='Solution Architect' }">
		                	 <li>
		                        <a href="/dealspecs" class="waves-effect" ><i class="fa fa-columns fa-fw"
		                                aria-hidden="true"></i>Deal Specs</a>
		                    </li>
		                    </c:if>
		                    <c:choose>
				 				<c:when test="${sessionScope.roleName=='Bid Manager'|| sessionScope.name=='Admin'}">
		                         <li>
		                      	  <a href="/access" class="disabled waves-effect"><i class="disabled fa fa-columns fa-fw"
		                                aria-hidden="true"></i>Access Manager</a>
		                   		 </li>
		                   		 </c:when>
								 <c:otherwise>
								 <li>
		                        <a href="/access" class="waves-effect"><i class="fa fa-columns fa-fw"
		                    	            aria-hidden="true"></i>Access Manager</a>
		                	    </li>
		               		    </c:otherwise>
							 </c:choose>
							 
					<c:if test="${sessionScope.name=='Admin' || sessionScope.name=='admin'}">
					
		          		 <li>
		                        <a href="userRole" class="waves-effect" ><i class="fa fa-columns fa-fw"
		                                aria-hidden="true"></i>User Role Mapping </a>
		                  </li>
		                  <li>
		                        <a href="/roleaccess" class="waves-effect" ><i class="fa fa-columns fa-fw"
		                                aria-hidden="true"></i>Role Access Mapping </a>
		                  </li>
		                 
		            	  <li>
		                        <a href="delspaceReport" class="waves-effect" ><i class="fa fa-columns fa-fw"
		                                aria-hidden="true"></i>Deal Space Report </a>
		                  </li>
		            	 
		            	 
		             </c:if>
		              
				
                </ul>
               
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
    <div id="page-wrapper">