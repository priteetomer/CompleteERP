<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<%HttpSession se =request.getSession();
	int rid = (Integer)se.getAttribute("rid");
				if( rid ==13)
				{%>
					<jsp:include page="EmpMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==12)
				{  %>
					<jsp:include page="OwnerMenubar.jsp"></jsp:include>
					
				<%}
				
				
	%>
	<!-- start Profile -->
	<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" style="width:650px;">
			<div id="login-content" class="modal-content"">
				<div class="modal-header">
					<h4 class="modal-title" align="center">
						<i class="fa fa-user"></i>Update Profile
					</h4>
				</div>
				<div class="modal-body ">
					<form action="../HoUpdateProfileServ" method="post">
					<div>
          <input type="hidden" value="${reg.regId}" name="regid" >
          </div>
          <div class="form-group">
              <input type="hidden" value="${reg.password}"  name="pass" class="form-control">
             
            </div>
					<table>
					<tr>
						<td>
						<div class="form-group">
							<label> First Name</label>
							 <input type="text" 
								class="form-control" name="fname" value="${reg.fname}">
						</div>
						</td>
						<td>
						<div class="form-group">
							<label style="margin-left:5px;"> Middle Name</label> 
							<input  name="mname" type="text" style="margin-left:5px;" 
								class="form-control" value="${reg.mname}">
						</div>
						</td>
						<td>
						<div class="form-group">
						<label style="margin-left:10px;">Last Name</label>
							<input type="text" style="margin-left:10px;"  name="lname" class="form-control"
								 value="${reg.lname}">
						</div>
						</td>
						</tr>
						</table>
						<table>
					<tr>
						<td>
						<div class="form-group">
						<label style="margin-left:43px;"> Email</label>
							<input type="text" style="margin-left:43px;" readonly="readonly"  name="email" class="form-control" 
								value="${reg.email}">
						</div>
						</td>
					<td>
						<div class="form-group">
							<label style="margin-left:70px;">Date of Birth</label>
							<input type="date" style="margin-left:70px;"  value="${reg.dob}" name="dob" class="form-control">
							
						</div>
						</td>
						</tr>
						</table>
						<table>
					<tr>
						<td>
						<div class="form-group">
						
							<label style="margin-left:43px;">Contact No</label><input style="margin-left:43px;" type="text" name="number"  class="form-control"
								value="${reg.contactno}">
						</div>
						</td>
						<td>
						<table>
						<tr>
						<td>
						<div class="form-group">
							<label  style="margin-left:100px; margin-top:5px;">Gender</label>
							
						</div>
						</td>
						<td>
						<div class="form-group">
							<input style="margin-left:10px; " type="radio" name="gender" value="Male" checked="checked"> 
						</div>
						</td>
						<td>
						<div class="form-group">
							<label style="margin-left:2px; margin-top:5px; ">Male</label>
						</div>
						</td>
						<td>
						<div class="form-group">
              				<input style="margin-left:10px;" type="radio" name="gender" value="Female">
							
						</div>
						</td>
						<td>
						<div class="form-group">
              				<label style="margin-left:2px; margin-top:5px; ">Female</label>
							
						</div>
						</tr>
						</table>
						</td>
						</tr>
						</table>
						<table>
					<tr>
						<td>
						<div class="form-group">
						<label style="margin-left:43px;">Role</label><input readonly="readonly" style="margin-left:43px;" type="text"  name="rid" class="form-control" 
								value="${reg.role.role}">
							
						</div>
						</td>
						<td>
						<div class="form-group">
							<label style="margin-left:70px;">Address</label><input style="margin-left:70px;height:100px; "  type="text" class="form-control"
								name="address" value="${reg.address}">
						</div>
						</td>
						</tr>
						</table>
						<div class="loginbox">
							<input type="submit" style="margin-left:250px;"
								class="btn signin-btn" value="Update Profile">
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- End Profile -->
 <!-- Start footer -->
  <footer style="margin-top:15px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  >  All Right Reserve &copy; Copyright 2017 <a href="Index.jsp" target="_blank">ERP SYSTEMS AHMEDABAD</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="https://www.facebook.com/pages/Robonet-Infotech-India-PvtLtd/1087711411254042?ref=hl"><i  class="fa fa-facebook"></i></a>
            <a href="https://twitter.com/robo_infotech"><i class="fa fa-twitter"></i></a>
            
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->
</body>
</html>