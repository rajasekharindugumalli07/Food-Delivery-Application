<%@include  file="connect.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="msapplication-tap-highlight" content="no">
  <title>User List</title>

  <!-- Favicons-->
  <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
  <!-- Favicons-->
  <link rel="apple-touch-icon-precomposed" href="images/favicon/apple-touch-icon-152x152.png">
  <!-- For iPhone -->
  <meta name="msapplication-TileColor" content="#00bcd4">
  <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
  <!-- For Windows Phone -->


  <!-- CORE CSS-->
  <link href="css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="css/style.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <!-- Custome CSS-->    
  <link href="css/custom/custom.min.css" type="text/css" rel="stylesheet" media="screen,projection">

  <link href="js/plugins/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
     <style type="text/css">
  .input-field div.error{
    position: relative;
    top: -1rem;
    left: 0rem;
    font-size: 0.8rem;
    color:#FF4081;
    -webkit-transform: translateY(0%);
    -ms-transform: translateY(0%);
    -o-transform: translateY(0%);
    transform: translateY(0%);
  }
  .input-field label.active{
      width:100%;
  }
  .left-alert input[type=text] + label:after, 
  .left-alert input[type=password] + label:after, 
  .left-alert input[type=email] + label:after, 
  .left-alert input[type=url] + label:after, 
  .left-alert input[type=time] + label:after,
  .left-alert input[type=date] + label:after, 
  .left-alert input[type=datetime-local] + label:after, 
  .left-alert input[type=tel] + label:after, 
  .left-alert input[type=number] + label:after, 
  .left-alert input[type=search] + label:after, 
  .left-alert textarea.materialize-textarea + label:after{
      left:0px;
  }
  .right-alert input[type=text] + label:after, 
  .right-alert input[type=password] + label:after, 
  .right-alert input[type=email] + label:after, 
  .right-alert input[type=url] + label:after, 
  .right-alert input[type=time] + label:after,
  .right-alert input[type=date] + label:after, 
  .right-alert input[type=datetime-local] + label:after, 
  .right-alert input[type=tel] + label:after, 
  .right-alert input[type=number] + label:after, 
  .right-alert input[type=search] + label:after, 
  .right-alert textarea.materialize-textarea + label:after{
      right:70px;
  }
  </style> 
</head>

<body>
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->

  <!-- //////////////////////////////////////////////////////////////////////////// -->

  <!-- START HEADER -->
  <header id="header" class="page-topbar">
        <!-- start header nav-->
        <div class="navbar-fixed">
            <nav class="navbar-color">
                <div class="nav-wrapper">
                    <ul class="left">                      
                      <li><h1 class="logo-wrapper"><a href="index.jsp" class="brand-logo darken-1"><img src="images/materialize-logo.png" alt="logo"></a> <span class="logo-text">Logo</span></h1></li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- end header nav-->
  </header>
  <!-- END HEADER -->

  <!-- //////////////////////////////////////////////////////////////////////////// -->

  <!-- START MAIN -->
  <div id="main">
    <!-- START WRAPPER -->
    <div class="wrapper">

      <!-- START LEFT SIDEBAR NAV-->
      <aside id="left-sidebar-nav">
        <ul id="slide-out" class="side-nav fixed leftside-navigation">
            <li class="user-details cyan darken-2">
            <div class="row">
                <div class="col col s4 m4 l4">
                    <img src="images/avatar.jpg" alt="" class="circle responsive-img valign profile-image">
                </div>
				 <div class="col col s8 m8 l8">
                    <ul id="profile-dropdown" class="dropdown-content">
                        <li><a href="routers/logout.jsp"><i class="mdi-hardware-keyboard-tab"></i> Logout</a>
                        </li>
                    </ul>
                </div>
                <div class="col col s8 m8 l8">
                    <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><?php echo $name;?>�<i class="mdi-navigation-arrow-drop-down right"></i></a>
                    <p class="user-roal"><?php echo $role;?></p>
                </div>
            </div>
            </li>
            <li class="bold"><a href="index.jsp" class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i> Food Menu</a>
            </li>
                <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="mdi-editor-insert-invitation"></i> Orders</a>
                            <div class="collapsible-body">
                                <ul>
								<li><a href="all-orders.jsp">All Orders</a>
                                </li>
								<?php
									$sql = mysqli_query($con, "SELECT DISTINCT status FROM orders;");
									while($row = mysqli_fetch_array($sql)){
                                    echo '<li><a href="all-orders.jsp?status='.$row['status'].'">'.$row['status'].'</a>
                                    </li>';
									}
									?>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>
                 <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="mdi-action-question-answer"></i> Tickets</a>
                            <div class="collapsible-body">
                                <ul>
								<li><a href="all-tickets.jsp">All Tickets</a>
                                </li>
								
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>			
            <li class="bold active"><a href="users.jsp" class="waves-effect waves-cyan"><i class="mdi-social-person"></i> Users</a>
            </li>			
        </ul>
        <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="mdi-navigation-menu"></i></a>
        </aside>
      <!-- END LEFT SIDEBAR NAV-->

      <!-- //////////////////////////////////////////////////////////////////////////// -->

      <!-- START CONTENT -->
      <section id="content">

        <!--breadcrumbs start-->
        <div id="breadcrumbs-wrapper">
          <div class="container">
            <div class="row">
              <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title">User List</h5>
              </div>
            </div>
          </div>
        </div>
        <!--breadcrumbs end-->


        <!--start container-->
        <div class="container">
          <p class="caption">Enable, Disable or Verify Users.</p>
          <div class="divider"></div>
          <!--editableTable-->
          <div id="editableTable" class="section">
		  <form class="formValidate" id="formValidate1" method="post" action="routers/user-router.jsp" novalidate="novalidate">
            <div class="row">
              <div class="col s12 m4 l3">
                <h4 class="header">List of users</h4>
              </div>
              <div>
<table>
                    <thead>
                      <tr>
                        <th data-field="name">Name</th>
                        <th data-field="price">Email</th>
                        <th data-field="price">Contact</th>
                        <th data-field="price">Address</th>	
                        <th data-field="price">Role</th>
                        <th data-field="price">Verified</th>
                        <th data-field="price">Enable</th>
                        <th data-field="price">Wallet</th>						
                      </tr>
                    </thead>

                    <tbody>
                        
                        <%
                            String result = "SELECT * FROM users";
				Statement stt1=con.createStatement();
                                ResultSet rss=stt1.executeQuery(result);
                                while(rss.next())
				{
                                    %>
                            <tr><td><%=rss.getString("name")%></td>';
					<td><%=rss.getString("email")%></td>
					<td><%=rss.getString("contact")%></td>   
					<td><%=rss.getString("address")%></td> 
                                        <%
                                        }
%>
                                    
                    </tbody>
</table>
              </div>
			  <div class="input-field col s12">
                              <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Modify
                                <i class="mdi-content-send right"></i>
                              </button>
                            </div>
            </div>
			</form>
		  <form class="formValidate" id="formValidate" method="post" action="add-users.jsp" novalidate="novalidate">
            <div class="row">
              <div class="col s12 m4 l3">
                <h4 class="header">Add User</h4>
              </div>
              <div>
<table>
                    <thead>
                      <tr>
                        <th data-field="name">Username</th>
                        <th data-field="name">Password</th>							
                        <th data-field="name">Name</th>
                        <th data-field="price">Email</th>
                        <th data-field="price">Phone number</th>
                        <th data-field="price">Address</th>	
                        <th data-field="price">Role</th>
                        <th data-field="price">Verified</th>
                        <th data-field="price">Enable</th>		
                      </tr>
                    </thead>

                    <tbody>
				<tr><td><label for="username">Username</label><input id="username" name="username" type="text" data-error=".errorTxt02"><div class="errorTxt02"></div></td>   									
					<td><label for="password">Password</label><input id="password" name="password" type="password" data-error=".errorTxt03"><div class="errorTxt03"></div></td>   						
					<td><label for="name">Name</label><input id="name" name="name" type="text" data-error=".errorTxt04"><div class="errorTxt04"></div></td>
					<td><label for="email">Email</label><input id="email" name="email" type="email"></td>';
					<td><label for="contact">Phone number</label><input id="contact" name="contact" type="number" data-error=".errorTxt05"><div class="errorTxt05"></div></td>
					<td><label for="address">Address</label><input id="address" name="address" type="text" data-error=".errorTxt06"><div class="errorTxt06"></div></td>   
					<td><select name="role">
                      <option value="Administrator">Administrator</option>
                      <option value="Customer" selected>Customer</option>
                    </select></td>
					<td><select name="verified">
                      <option value="1">Verified</option>
                      <option value="0" selected>Not Verified</option>
                    </select></td>
				<td><select name="deleted">
                      <option value="1">Disable</option>
                      <option value="0" selected>Enable</option>
                    </select></td></tr>					
				?>
                    </tbody>
</table>
              </div>
			  <div class="input-field col s12">
                              <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Add
                                <i class="mdi-content-send right"></i>
                              </button>
                            </div>
            </div>
			</form>			
            <div class="divider"></div>
            
          </div>
        </div>
        </div>
        <!--end container-->

      </section>
      <!-- END CONTENT -->
    </div>
    <!-- END WRAPPER -->

  </div>
  <!-- END MAIN -->



  <!-- //////////////////////////////////////////////////////////////////////////// -->

  <!-- START FOOTER -->
  <footer class="page-footer">
    <div class="footer-copyright">
      <div class="container">
        <span>Copyright � 2017 <a class="grey-text text-lighten-4" href="#" target="_blank">Students</a> All rights reserved.</span>
        <span class="right"> Design and Developed by <a class="grey-text text-lighten-4" href="#">Students</a></span>
        </div>
    </div>
  </footer>
    <!-- END FOOTER -->



    <!-- ================================================
    Scripts
    ================================================ -->
    
    
    <!-- jQuery Library -->
    <script type="text/javascript" src="js/plugins/jquery-1.11.2.min.js"></script>    
    <!--angularjs-->
    <script type="text/javascript" src="js/plugins/angular.min.js"></script>
    <!--materialize js-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script type="text/javascript" src="js/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/jquery-validation/additional-methods.min.js"></script>
    	
	
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.min.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="js/custom-script.js">
    $("#formValidate").validate({
        rules: {
            username: {
                required: true,
                minlength: 5,
            },
            password: {
                required: true,
                minlength: 5,
            },
            name: {
                required: true,
                minlength: 5,
			},
            contact: {
                required: true,
                minlength: 4,
			},
            address: {
                minlength: 10,
			},		
            balance: {
                required: true,
			},				
		},
        messages: {
           username:{
                required: "Enter a username",
                minlength: "Enter at least 5 characters"
            },	
           password:{
                required: "Provide a prove",
                minlength: "Password must be atleast 5 characters long",
            },	
           name:{
                required: "Please provide CVV number",
                minlength: "Enter at least 5 characters",		
            },	
           contact:{
                required: "Please provide card number",
                minlength: "Enter at least 4 digits",
            },	
           address:{
                minlength: "Address must be atleast 10 characters long",		
            },		
           balance:{
                required: "Please provide a balance.",		
            },				
		},
        errorElement : 'div',
        errorPlacement: function(error, element) {
          var placement = $(element).data('error');
          if (placement) {
            $(placement).append(error)
          } else {
            error.insertAfter(element);
          }
        }
     }); 
    </script>
</body>

</html>