<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="ISO-8859-1">
		<title>Customer Addition Module</title>
		
		<style>

			input[type="submit"] {
 	 			display: block;
  				font-family: Verdana,"Rockwell",Helvetica,Serif;
  				font-size: 15px;
  				width: 90px;
  				height: 90px;
  				background: #fff;
  				padding: 10px;
  				border: 0;
  				outline: 0;
  				border-radius: 50%;
  				color: #171717;
  				transition: all 200ms;
  				cursor: pointer;
			}
			
			input[type="submit"]:focus {
 	 			background: transparent;
  				color: transparent;
  				border: none;
  				border-top: solid 3px #f8a;
  				border-left: solid 3px #fff;
  				animation: spin 700ms linear infinite;
			}
			
			@keyframes spin {
  				to {transform: rotate(360deg);}
			}
			
			table, th, td {
			font-weight: 900;
			}
			
			table.orochi {
  				margin-left: auto; 
  				margin-right: auto;
			}
			
			* {
  				margin: 0;
  				padding: 0;
  				box-sizing: border-box;
  				font-family: 'Poppins',sans-serif;
			}
			
			::selection {
  				color: #000;
  				background: #fff;
			}
			
			.button {
  				border: none;
  				color: white;
  				padding: 16px 32px;
  				text-align: center;
  				text-decoration: none;
  				display: inline-block;
  				font-size: 16px;
  				margin: 4px 2px;
  				transition-duration: 0.4s;
  				cursor: pointer;
			}
			
			.button2 {
  				background-color: white;
  				color: black;
  				border: 2px solid #008CBA;
			}

			.button2:hover {
 	 			background-color: #008CBA;
  				color: white;
  			}
  			
  			.center {
  				position: absolute;
  				top: 50%;
  				left: 50%;
  				transform: translate(-50%, -50%);
  				width: 100%;
  				padding: 0 20px;
  				text-align: center;
			}
		
			nav {
  				position: fixed;
  				background: #1b1b1b;
  				width: 100%;
  				padding: 10px 0;
  				z-index: 12;
			}
			
			nav .menu {
  				max-width: 1250px;
  				margin: auto;
  				display: flex;
  				align-items: center;
  				justify-content: space-between;
  				padding: 0 20px;
			}
			
			.menu .logo a {
  				text-decoration: none;
  				color: #fff;
  				font-size: 35px;
  				font-weight: 600;
			}
			
			.menu ul {
 	 			display: inline-flex;
			}
			
			.menu ul li {
  				list-style: none;
  				margin-left: 7px;
			}
			
			.menu ul li:first-child {
  				margin-left: 0px;
			}
			
			.menu ul li a {
  				text-decoration: none;
  				color: #fff;
  				font-size: 18px;
  				font-weight: 500;
  				padding: 8px 15px;
  				border-radius: 5px;
  				transition: all 0.3s ease;
			}
			
			.menu ul li a:hover {
  				background: #fff;
  				color: black;
			}

			.img {
  				background: url(https://wallpapercave.com/wp/wp2019397.jpg)no-repeat;
  				width: 100%;
  				height: 100vh;
  				background-size: cover;
  				background-position: center;
  				position: relative;
  				opacity: 0.5;
			}
			
			.img::before {
  				content: '';
  				position: absolute;
  				height: 100%;
  				width: 100%;
  				background: rgba(0, 0, 0, 0.4);
			}

			.center .btns {
  				margin-top: 20px;
			}

			.center .btns button {
  				height: 55px;
  				width: 170px;
  				border-radius: 5px;
  				border: none;
  				margin: 0 10px;
  				border: 2px solid white;
  				font-size: 20px;
  				font-weight: 500;
  				padding: 0 10px;
  				cursor: pointer;
  				outline: none;
  				transition: all 0.3s ease;
			}
		
			.myErr {
				color:red;
			}
			
			.nine h2 {
  				text-align:center; font-size:50px;
  				color:#222; letter-spacing:1px;
  				font-family:"Playfair Display", serif;
  				font-weight:400;
			}
			
			input[type=text] {
  				width: 100%;
  				padding: 12px 20px;
  				margin: 8px 0;
  				box-sizing: border-box;
  				border: 3px solid #ccc;
  				-webkit-transition: 0.5s;
  				transition: 0.5s;
  				outline: none;
			}
			
			.label {
  				color: white;
  				padding: 8px;
  				font-family: Arial;
			}

			.Customer {
				background-color: #04AA6D;
			}

			input[type=text]:focus {
  				border: 3px solid #555;
			}
		</style>
	</head>
	
	
	
	<body>
		<nav>
    		<div class="menu">
     	 	<div class="logo">
        		<a href="#">Dummy6</a>
      		</div>
      		
      		<ul>
        		<li><a href="#">Home</a></li>
        		<li><a href="#">About</a></li>
        		<li><a href="#">Services</a></li>
        		<li><a href="#">Contact</a></li>
        		<li><a href="#">Feedback</a></li>
      		</ul>
    		</div>
  		</nav>
  		
			<div class="img"></div>
			<div class="center">
			<div class="btns">
			<div class="nine">
			<h2 style="text-align:center"> Add a Customer</h2>
			</div>
			<form:form method="post" action="save" modelAttribute="sal">
			
		<table class = "orochi">
			<tr>
				<td align="right">
				<span class="label Customer">	Customer No :</span>
				</td>
			
				<td>
					<form:input path="id" required="required" 
					placeholder="Between 10 and 500"/>
				</td>
			
				<td>
					<form:errors cssClass="myErr" 
					path="id"/>
				</td>
			</tr>
			
			<tr>
				<td align="right">
				<span class="label Customer">	Customer Name :</span>
					
				</td>
				
				<td>
					<form:input path="name" 
					required="required" placeholder="At least 3 characters"/>
				</td>
				
				<td>
					<form:errors cssClass="myErr" 
					path="name"/>
				</td>
			</tr>
			
			<tr>
				<td align="right">
				<span class="label Customer">	City :</span>
					
				</td>
				
				<td>
					<form:input path="city" 
					required="required" placeholder="At least 3 characters"/>
				</td>
				
				<td>
					<form:errors cssClass="myErr" 
					path="city"/>
				</td>
			</tr>
			
			<tr>
				<td align="right">
				<span class="label Customer">	Credit Limit :</span>
					
				</td>
				
				<td>
					<form:input path="creditLimit" 
					required="required" placeholder="Between 20000 and 75000"/>
				</td>
				
				<td>
					<form:errors cssClass="myErr" 
					path="creditLimit"/>
				</td>
			</tr>
			
			<tr>
				<td align="right">
				<span class="label Customer">Sales Done :</span>
					
				</td>
				
				<td>
					<form:input path="salesDone" 
					required="required" placeholder="Between 20000 and 75000"/>
				</td>
				
				<td>
					<form:errors cssClass="myErr" 
					path="salesDone"/>
				</td>
				
				</tr>
				
				<tr>
					<td align="right">
					<span class="label Customer">	Date of Joining :</span>
						
					</td>
					
					<td>
						<form:input type="text" 
						placeholder="MM/DD/YYYY" path="doj" required="required"/>
					</td>
					
					<td>
						<form:errors cssClass="myErr" 
						path="doj"/>
					</td>
				</tr>
				
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="3" align="center">
						<input type="submit" value="Save">
					</td>
				</tr>
		</table>
			</form:form>
				<a href="viewForm" target="">
				<button class="button button2">List Customers</button>
				</a>
				</div>
				</div>
	</body>
</html>