<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrapmin.css" rel='stylesheet' type='text/css' />
<title>C ERP:Home</title>
<link rel="shortcut icon" type="image/icon" href="images/final.png"/>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Index.jsp">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Service</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      
    </div>
  </div>
</nav>
 

<div class="jumbotron">
  <div class="container text-center">
  <div class="logo">
				  <img alt="" src="images/final.png">
				</div>     
    <p>provide complete solution to every industry</p>
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
  
  <form class="form-horizontal" style= "border: 3px solid #317eac;">
  <fieldset>
  <h3>Choose Modules</h3>
    <div class="form-group">
      <div class="col-lg-12">
        <div class="checkbox">
        <label>
            <input type="checkbox"> Home Page
          </label>
          <label>
            <input type="checkbox"> HR
          </label>
          <label>
             <input type="checkbox"> Finance
          </label>
          <label>
             <input type="checkbox"> ProjectManager
          </label>
          <label>
             <input type="checkbox"> Developer
          </label>
           <label>
             <input type="checkbox"> User
          </label>
          
        </div>
      </div>
    </div>
    <h3>Choose Menus</h3>
    <div class="form-group">
      <div class="col-lg-12">
        <div class="checkbox">
          <label>
            <input type="checkbox"> Home
          </label>
          <label>
             <input type="checkbox"> Project
          </label>
          <label>
             <input type="checkbox"> Leaves
          </label>
          <label>
             <input type="checkbox"> Profile
          </label>
          <label>
             <input type="checkbox"> Attendance
          </label>
          <label>
             <input type="checkbox"> Blog
          </label>
          <label>
             <input type="checkbox"> Report
          </label>
        </div>
      </div>
    </div>
    <div class="btn-group btn-group-vertical">
  <a href="Start/ITindex.jsp" class="btn btn-success">Submit</a>
  <br>
</div>
  </fieldset>
</form>
</div>
</body>
</html>