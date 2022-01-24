<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View Customer Module</title>
		
		<style>
			table, th, td {
				font-weight: 900;
			
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
			
			.button1 {
			  	background-color: white;
			  	color: black;
			  	border: 2px solid #4CAF50;
			}
			
			.button1:hover {
			  	background-color: #4CAF50;
			  	color: white;
			}
			
			.button3 {
				background-color: white;
			  	color: black;
			  	border: 2px solid #4CAF50;
			  	padding: 5px 5px;
			}
			
			.button3:hover {
				background-color: red;
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
			
			.menu .logo a{
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
			.menu ul li:first-child{
		 	 	margin-left: 0px;
			}
			
			.menu ul li a{
		  		text-decoration: none;
		  		color: #fff;
		  		font-size: 18px;
		  		font-weight: 500;
		  		padding: 8px 15px;
		  		border-radius: 5px;
		  		transition: all 0.3s ease;
			}
			
			.menu ul li a:hover{
		  		background: #fff;
		  		color: black;
			}
		
			.img{
		  		background: url(https://thumbs.dreamstime.com/z/business-landing-page-sales-management-service-business-flat-landing-page-online-service-helping-sales-management-166557840.jpg)no-repeat;
		  		width: 100%;
		  		height: 100vh;
		  		background-size: cover;
		  		background-position: center;
		  		position: relative;
		  		opacity: 0.5;
			}
			
			.img::before{
		  		content: '';
		  		position: absolute;
		  		height: 100%;
		  		width: 100%;
		  		background: rgba(0, 0, 0, 0.4);
			}
		
			.center .btns{
		  		margin-top: 20px;
			}
			
			
		
			.center .btns button{
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
			
			
			.table-wrapper {
    			margin: 10px 70px 70px;
    			box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
			}

			.fl-table {
    			border-radius: 5px;
    			font-size: 12px;
    			font-weight: normal;
    			border: none;
    			border-collapse: collapse;
    			width: 100%;
    			max-width: 100%;
    			white-space: nowrap;
    			background-color: white;
			}

			.fl-table td, .fl-table th {
    			text-align: center;
    			padding: 8px;
			}

			.fl-table td {
    			border-right: 1px solid #f8f8f8;
    			font-size: 12px;
			}

			.fl-table thead th {
    			color: #ffffff;
    			background: #4FC3A1;
			}

			.fl-table thead th:nth-child(odd) {
    			color: #ffffff;
    			background: #324960;
			}

			.fl-table tr:nth-child(even) {
    			background: #F8F8F8;
			}

			@media (max-width: 767px) {
    		.fl-table {
        		display: block;
        		width: 100%;
    		}
    		
    		.table-wrapper:before {
        		content: "Scroll horizontally >";
        		display: block;
        		text-align: right;
        		font-size: 11px;
        		color: white;
        		padding: 0 0 10px;
    		}
    		
    		.fl-table thead, .fl-table tbody, .fl-table thead th {
        		display: block;
    		}
    		
    		.fl-table thead th:last-child {
        		border-bottom: none;
    		}
    		
    		.fl-table thead {
        		float: left;
    		}
    		
    		.fl-table tbody {
        		width: auto;
        		position: relative;
        		overflow-x: auto;
    		}
    		
    		.fl-table td, .fl-table th {
        		padding: 20px .625em .625em .625em;
        		height: 60px;
        		vertical-align: middle;
        		box-sizing: border-box;
        		overflow-x: hidden;
        		overflow-y: auto;
        		width: 120px;
        		font-size: 13px;
        		text-overflow: ellipsis;
    		}
    		
    		.fl-table thead th {
        		text-align: left;
        		border-bottom: 1px solid #f7f7f9;
    		}
    		
    		.fl-table tbody tr {
        		display: table-cell;
    		}
    		
    		.fl-table tbody tr:nth-child(odd) {
        		background: none;
    		}
    		
    		.fl-table tr:nth-child(even) {
        		background: transparent;
    		}
    		
    		.fl-table tr td:nth-child(odd) {
        		background: #F8F8F8;
        		border-right: 1px solid #E6E4E4;
    		}
    		
    		.fl-table tr td:nth-child(even) {
        		border-right: 1px solid #E6E4E4;
    		}
    		
    		.fl-table tbody td {
        		display: block;
        		text-align: center;
    		}
			}
			
			.nine h2 {
  				text-align:center; font-size:50px; 
  				color:#222; letter-spacing:1px;
  				font-family:"Playfair Display", serif;
  				font-weight:400;
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
        		<li><a href="index.jsp">Home</a></li>
        		<li><a href="#">About</a></li>
        		<li><a href="#">Services</a></li>
        		<li><a href="#">Contact</a></li>
        		<li><a href="#">Feedback</a></li>
      		</ul>
    		</div>
  		</nav>
  		
			<div class="img"></div>
			<div class="center">
			<div class="nine">
				<h2 style="text-align:center">Customer Details</h2>
				</div>
		<div class="table-wrapper">
    <table class="fl-table"
	
			style=	"border:1px solid black;
					margin-left:auto;
					margin-right:auto;
					padding:2px;
					border-spacing:20px;">
		<thead>
		<tr class="active-row">
		 
			<th>Customer Id</th>
			<th>Name</th>
			<th>City</th>
			<th>CreditLimit</th>
			<th>SalesDone</th>
			<th>Date of joining</th>
			<th >Action</th>	 
		</tr>
		</thead>
		<c:forEach items="${list}" var="sal">
	
		<tr class="active-row">
			<td>${sal.id}</td>
			<td>${sal.name}</td>
			<td>${sal.city}</td>
			<td align="right">${sal.creditLimit}</td>
			<td align="right">${sal.salesDone}</td>
			<td><fmt:formatDate pattern="dd-MM-yyyy" value="${sal.doj}" /></td>
			
			<td>
			
				<a href="deleteSal/${sal.id}">
				<input type="hidden" name="_method" value="DELETE"> 
				<input type="hidden" name="_token" value="the_token">
				<button type="submit" class="button button3" onclick="if (!confirm('Are you sure?')) { return false }"><span>Delete</span></button>
				
				
			</a>
			</td>
		</tr>
		
		</c:forEach>
	</table>
			<div class="btns">
				<a href="salForm" target="">
				<button class="button button1">Add Customer</button>
				</a>
				</div>
			</div>
			</div>
	</body>
</html>