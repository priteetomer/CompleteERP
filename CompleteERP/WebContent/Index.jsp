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
  <h3>Choose Industry</h3>
   <div class="btn-group btn-group-vertical">
  <a href="HealthIndex.jsp" class="btn btn-primary">HealthCare Industry</a>
  <a href="HospitalityIndex.jsp" class="btn btn-primary">Hospitality </a>
  <a href="ITIndex.jsp" class="btn btn-primary">IT Industry</a>
  <a href="RealIndex.jsp" class="btn btn-primary">Real Estate </a>
  <a href="EduIndex.jsp" class="btn btn-primary">Education</a>
</div>
</div>
</body>
</html>