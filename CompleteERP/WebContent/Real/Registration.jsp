<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
       <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<link rel="stylesheet" href="assets/css/validationEngine.jquery.css" type="text/css"/>
<script src="../assets/js1/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="../assets/js1/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js1/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<title>Registration</title>
<script language="javascript">
	var mi = jQuery.noConflict();
	mi(document).ready(function s() {
		// binds form submission and fields to the validation engine
		mi("#registration").validationEngine();
	});
</script>
   
   
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="../asset/images/erpicon.png"/>
    <!-- Font Awesome -->
    <link href="../assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../asset/css/bootstrap.css" rel="stylesheet">    
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="../assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css"/> 
    <!-- Progress bar  -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-progressbar-3.3.4.css"/> 
     <!-- Theme color -->
    <link id="switcher" href="../assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

   

  <!-- BEGIN MENU -->
  <section id="menu-area">      
    <nav class="navbar navbar-inverse"  role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
          <a class="navbar-brand" style=" margin-left:-40px;" href="Index.jsp"></a>              
          <!-- IMG BASED LOGO  -->
            <div class="logo">
                             <img alt="" src="../asset/images/real.png">
                        </div> 
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li class="active"><a href="Index.jsp">Home</a></li>
            <li><a href="Index.jsp#about">About</a></li>
            <li><a href="Index.jsp#service">Service</a></li>
            <li><a href="Index.jsp#contact">ContactUs</a></li>
          </ul>                     
        </div>
      </div>     
    </nav>
  </section>
  <!-- END MENU --> 
      <!-- Start signup section -->
      <section id="menu-area">
      <div class="container">
	<div id="login-content" class="modal-content  wow zoomIn"
		style="width:700px; margin-left:250px;">
		<div class="modal-header">
			<h4 class="modal-title" align="center">
				<i class="fa fa-lock"></i>Sign Up
			</h4>
		</div>
   
   		<div class="modal-body">
			<form action="../RInsertServlet" method="post" name="registration" id="registration" >
				<table>
					<tr>
						<td>
							<div class="form-group"  >
								<input  type="text"
									placeholder="First Name"  name="fname"   id="fname" class="form-control and validate[required,custom[onlyLetterSp]]" >
									
							</div>
						</td>
						<td>
							<div class="form-group">
								<input style="margin-left:10px;" type="text"
									placeholder="Middle Name" name="mname"  id="mname"
									class="form-control and validate[required,custom[onlyLetterSp]]" >
							</div>
						</td>
						<td>
							<div class="form-group">
								<input style="margin-left:20px;" type="text"
									placeholder="Last Name" name="lname" id="lname" 
									class="form-control and validate[required,custom[onlyLetterSp]]">
							</div>
						</td>
					</tr>
				</table>
				<table style="margin-top: 10px;">
					<tr>
						
						<td>
							<div class="form-group">
								<input  type="text" placeholder="Email" name="email"  id="EmailAddress" class="form-control and validate[required,custom[email]"]>
							</div>
						</td>
						<td>
							<div class="form-group">
								<input style="margin-left:10px;" id="Password"  type="password" placeholder="Password"
									name="pass" class="form-control and validate[required, minSize[7], maxSize[10]]" >
							</div>
						</td>
						<td>
							<div class="form-group">
								<input style="margin-left: 20px;" type="password" 
									placeholder="Confirm Password" 
									name="confpass" class="form-control and validate[required,equals[Password]]">
							</div>
						</td>
					</tr>
					<%
						if (request.getParameter("error") != null) {
					%>
					<h4 style="color: red">Email already exist</h4>
					<%
						}
					%>
					<%
						if (request.getParameter("msg") != null) {
					%>
					<h4 style="color: red">Password & confirm password not
						matching</h4>
					<%
						}
					%>
					</table>
					<table style="margin-top: 10px;">
					<tr>
					
					<td>
							<div class="form-group">
								<input  type="text" placeholder="contact Number"
									 name="number"   id="ContactNo" class="form-control and validate[required,custom[phone]]">
							</div>
					</td>
					<td>
							<div class="form-group">
								<select style="margin-left:40px;" name="drprole" id="RolID"  class="form-control and validate[required]">
								<option value="-1">Select Role</option>
									<option>Agent</option>
									<option>Client</option>
								</select>
							</div>
						</td>
						<td>
								<div class="form-group">
									<label style="margin-top:15px; margin-left:75px;">DOB:</label>
								</div>
						</td>
						<td>
							<div class="form-group">
							 <input  type="date" name="dob"
									 id="dob" class="form-control and validate[required,custom[dateFormat]]">
							</div>
						</td>		
					</tr>
					</table>
					<table style="margin-top: 10px;">
					<tr>
						  <td>
							<div class="form-group">
							<label> Gender:</label>
							</div>
							</td>
						  <div class="form-group">
							<td><input style=" margin-bottom:25px; margin-left:5px;" type="radio" name="gender" value="Male"
								checked="checked"> Male <input type="radio"
								name="gender" value="Female"> Female</td>
								</div>
						<td>
							<div class="form-group">
								<textarea style=" margin-left:30px;" type="text" placeholder="Address"
									name="address" id="Address"  class="form-control and validate[required]"></textarea>
							</div>
						</td>
					</tr>
					</table>
					<table  style=" margin-top:20px;">
					<tr>
						<td>
							<div class="signupbox">
								<span style=" margin-top:20px;">Already got account?
								<a  href="Login.jsp">Sign In.</a></span>
							</div>
						</td>
						<td>
							<div class="loginbox" >
								<button style="margin-left:80px;"  class="btn signin-btn" type="submit">SIGN UP</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
			
		</div>
	</div>
	</div>
	</section>
	

	
 <!-- End Registration -->

<!-- Start footer -->
  <footer style="margin-top:15px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  > Designed by <a href="Index.jsp" target="_blank">COMPLETE ERP</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="Registration.jsp"><i  class="fa fa-facebook"></i></a>
            <a href="Registration.jsp"><i class="fa fa-twitter"></i></a>
            
            <a href="Registration.jsp"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->
  
<jsp:include page="JqueryLib.jsp"></jsp:include>
</body>
</html>