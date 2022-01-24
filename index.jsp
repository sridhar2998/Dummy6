<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="ISO-8859-1">
		<title>Home</title>
		
		<style>
			h2 {
				color: darkgrey;
				font-size: 30px;
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
	  			top: 25%;
	  			left: 50%;
	  			transform: translate(-50%, -50%);
	  			width: 50%;
	  			padding: 0 20px;
	  			text-align: center;
			}
			
			.center .btns {
	  			margin-top: 200px;
			}
	
			.center .btns button {
	  			height: 55px;
	  			width: 170px;
	  			border-radius: 5px;
	 			border: none;
	 	  		margin: 0 100px;
	  			border: 2px solid white;
	  			font-size: 20px;
	  			font-weight: 500;
	  			padding: 0 10px;
	  			cursor: pointer;
	  			outline: none;
	  			transition: all 0.3s ease;
			}
	
			nav {
	  			position: fixed;
	  			background: #1b1b1b;
	  			width: 100%;
	  			padding: 10px 0;
	  			z-index: 12;
			}
			
			nav .menu{
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
	  			background: url(https://img.wallpapersafari.com/desktop/1920/1080/35/0/PVLndr.jpg)no-repeat;
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
			
			.nine h1 {
  				text-align:center; font-size:50px; 
  				text-transform:uppercase; color:#222; 
  				letter-spacing:1px;
  				font-family:"Playfair Display", serif; 
  				font-weight:400;
			}
			
			.nine h1 span {
			
			
    			text-transform: uppercase;
    			color: #D0F8FF;
    			text-shadow:	0 0 5px #A5F1FF, 0 0 10px #A5F1FF,
             					0 0 20px #A5F1FF, 0 0 30px #A5F1FF,
             					0 0 40px #A5F1FF;
             	font-size: 60px;
             	font-weight: bold;
             	text-align: center;
  				margin-top: 5px;
    			font-size:15px; color:#444; word-spacing:1px; font-weight:normal; letter-spacing:2px;
    			text-transform: uppercase; 
    			font-family:"Raleway", sans-serif; 
    			font-weight:500;
    			display: grid;
    			grid-template-columns: 1fr max-content 1fr;
   	 			grid-template-rows: 27px 0;
    			grid-gap: 20px;
    			align-items: center;
			}

			.nine h1 span:after,.nine h1 span:before {
    			content: " ";
    			display: block;
    			border-bottom: 1px solid #ccc;
    			border-top: 1px solid #ccc;
    			height: 5px;
  				background-color:#f8f8f8;
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
  <h1>Sales Management<span>Customer CRUD</span></h1>
</div>
			
			
	<table>
		<tr>
			<td>
				<a href="salForm" target="">
				<button class="button button1">Add customer</button>
				</a>
			</td>
			
			<td> 
				<a href="viewForm" target="">
				<button class="button button2">View Customer</button>
				</a>
			</td>
		</tr>
	</table> 
			</div>
			</div>
	</body>
</html>