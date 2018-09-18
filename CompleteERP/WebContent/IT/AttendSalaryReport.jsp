<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
 
<link
	href='/..assets/css/dataTables.bootstrap.min.css'
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
<%HttpSession s =request.getSession();
	int rid = (Integer)s.getAttribute("rid");
				if( rid ==1)
				{%>
					<jsp:include page="FinanceMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==2)
				{  %>
					<jsp:include page="HRMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==3)
				{ %>
					<jsp:include page="PMMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==4)
				{ %>
					<jsp:include page="UserMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==5)
				{ %>
					<jsp:include page="DevloperMenubar.jsp"></jsp:include>
				<%	
				}
	%>
<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width:350px; ">
        <div class="modal-body">
<form action="../AttendanceReportServ" method="post">
<div class="form-group">
             <label><span>Select Month</span><i class="fa"></i></label> 
             <select name="drpmonth" class="form-control">
             <option value="-1">Select Month</option>
              	<option value="1">January</option>
              	<option value="2">February</option>
              	<option value="3">March</option>
              	<option value="4">April</option>
              	<option value="5">May</option>
              	<option value="6">June</option>
              	<option value="7">July</option>
              	<option value="8">August</option>
              	<option value="9">September</option>
              	<option value="10">October</option>
              	<option value="11">November</option>
              	<option value="12">December</option>
              </select>
            </div>
        <div class="loginbox">
              <input class="btn signin-btn" id ="btnget" type="submit" value="GetReport" >
            </div>

</form>
</div>
</div>
</div>
</div>
</section>

 <%HttpSession se = request.getSession(); %>
 <section>
 
 <div class="table-responsive wow zoomIn"  style="margin-left:400px; width:600px;">
<table  class="table table-striped table-bordered"  id="tbldata" cellspacing="0" width="100%">
 <thead>
           <tr>
           <th>Selected Month</th>
           <th>Working Days</th>
           <th>Present Days</th>
           <th>Absent Days</th>
           <th>Salary</th>
           </tr>
           </thead>
    <tbody>
           <tr>
           <td><%=se.getAttribute("month") %></td>
           <td><%=se.getAttribute("totaldays") %></td>
           <td><%=se.getAttribute("presnt") %></td>
           <td><%=se.getAttribute("absnt") %></td>
           <td><%=se.getAttribute("totalsal") %></td>
           </tr>
           </tbody>
           </table>
          
           </div>
           </section>
           
           <!-- Start footer -->
  <footer style="margin-top:70px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4> Copyright @ 2017. <a href="http://www.maxgentechnologies.com/" >  
					COMPLETE ERP AHMEDABAD</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="https://www.facebook.com/1087711411254042?ref=hl"><i  class="fa fa-facebook"></i></a>
            <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
            
            <a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a>
            
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