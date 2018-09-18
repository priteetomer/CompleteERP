<%@page import="pojo.Studproject"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Registration"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projects</title>
<link
	href='../assets/css/dataTables.bootstrap.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='../assets/css/buttons.dataTables.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='../assets/css/jquery.dataTables.min.css'
	rel='stylesheet' type='text/css'>				
	
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="UserMenubar.jsp"></jsp:include>
  <!-- Start addproject section -->
 
<section id="menu-area">
      <div class="container" >
      <div class="modal-dialog wow zoomIn" style="width:400px;">
	<div id="login-content" class="modal-content" style="width: 350px;">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Add Project</h4>
		</div>
		<div class="modal-body ">
			<form action="../AddProject" method="post">
				<div class="form-group">
					<input type="text" required="required" placeholder="Project Title"
						class="form-control" name="protitle">
				</div>
				<div class="form-group">
					<textarea placeholder="Description" required="required"
						name="discription" class="form-control"></textarea>
				</div>
				<div class="form-group">
					<input placeholder="Technology" required="required" name="language"
						class="form-control">
				</div>
				<div class="loginbox" align="center">
					<input class="btn signin-btn" type="submit" value="Add">
				</div>
			</form>
		</div>

	</div>
	</div>
	</div>
	</section>

	<!-- End addproject modal window -->
   <%
   	BLmanager b = new BLmanager();
        HttpSession s = request.getSession();
   		String mail =(String)s.getAttribute("email");
   		Registration reg= b.getUserByUserId(mail);
   		int id = reg.getRegId();
   		List<Studproject> ls= b.Searchproject(id);
   		s.setAttribute("lst", ls);
   %>
    
    
	 <!-- Start footer -->
  <footer style="margin-top:100px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  >  All Right Reserve &copy; Copyright 2016 <a href="Index.jsp" target="_blank">COMPLETE ERP AHMEDABAD</a></h4>
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

<script type="text/javascript"
		src="../assets/js1/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="../assets/js1/dataTables.bootstrap.min.js"></script>
		
	<script type="text/javascript" src="../assets/js1/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="../assets/js1/buttons.flash.min.js"></script>
	<script type="text/javascript" src="../assets/js1/jszip.min.js"></script>
	<script type="text/javascript" src="../assets/js1/pdfmake.min.js"></script>
	<script type="text/javascript" src="../assets/js1/vfs_fonts.js"></script>
	<script type="text/javascript" src="../assets/js1/buttons.html5.min.js"></script>
	<script type="text/javascript" src="../assets/js1/buttons.print.min.js"></script>
 <script>
	$(document).ready(function() {
	    $('#example').DataTable({
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	    $('#tbldata').DataTable({
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
	</script>
	
</body>
</html>