<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Packages</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="OwnerMenubar.jsp"></jsp:include>

<!-- Start addproject section -->
<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width:350px; ">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Add Packages</h4>
		</div>
		<div class="modal-body">
			<form action="../AddPackages" method="post" name="package" id="page" >
				<table>
					<tr>
						<td>
							<div class="form-group"  >
								<input  type="text"
									placeholder="package Name"  name="pkname"   id="pkname" class="form-control and validate[required,custom[onlyLetterSp]]" >
									
							</div>
						</td>
						<td>
							<div class="form-group">
								<input style="margin-left:10px;" type="text"
									placeholder="Package Cost" name="pkcost"  id="pkcost"
									class="form-control and validate[required,custom[onlyLetterSp]]" >
							</div>
						</td>
						</tr>
						</table>
						<table>
						<tr>
						<td>
							<div class="form-group">
								<input style="margin-left:10px;" type="text"
									placeholder="Package Duration" name="pkdur" id="pkdur" 
									class="form-control and validate[required,custom[onlyLetterSp]]">
							</div>
						</td>
					</tr>
				</table>
						<table>
						<tr>				
						<td>
							<div class="form-group">
								<textarea style=" margin-left:10px;" type="text" placeholder="Package Description"
									name="pkdesc" id="pkdesc"  class="form-control and validate[required]"></textarea>
							</div>
						</td>
					</tr>
					</table>
					<table  style=" margin-top:20px;">
					<tr>
						
						<td>
							<div class="loginbox" >
								<button style="margin-left:120px;"  class="btn signin-btn" type="submit">ADD</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
			
		</div>

	</div>
	</div>
	</div>
	</section>

	<!-- End addproject modal window -->

<!-- Start footer -->
  <footer style="margin-top:160px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
            <h4> All Right Reserve &copy; Copyright 2017 <a href="Index.jsp" target="_blank">COMPLETE ERP</a></h4>
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