<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
			<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<style type="text/css">
			body{
			           background-repeat:no-repeat;
			           background-size:100% 100%;
			           background-attachment:fixed}
			       div {height:80%;width:30%;
			            margin-left:35%;
				        margin-top:35px;
				        padding:3%;
				        border:5px solid red;
				        border-top-right-radius:30px;
				        border-bottom-left-radius:30px;
				        text-align:justify;
				        background-color:white;box-shadow:5px 10px 15px red}
			        input { border-top:none;border-left:none;border-right:none}	
					.q1 {width:200px;border-top:none;border-left:none;border-right:none;border-top-right-radius:30px;
				        border-bottom-left-radius:30px;box-shadow:5px 10px 15px red;cursor:pointer}
			</style>
			</head>
			<body>
			<div >
			       <form style="font-size:25px">
			         <label>Product Id:- </label><input value="request.getParameter("pid")" readonly="readonly"><br><br>
			         <label>Product name:- </label><input value="request.getParameter("pname")" readonly="readonly"><br><br>
			         <label>Product Weight:- </label><input value="request.getParameter("pweight")" readonly="readonly" ><br><br>
			         <label>Product price:- </label><input value="request.getParameter("pprice")" readonly="readonly"><br><br>
			         <label>Mfg Company:- </label><input value="request.getParameter("pcompany")" readonly="readonly" ><br><br>
			         <label>Mfg Date:- </label><input value="request.getParameter("pdate")" readonly="readonly" ><br><br>
			         <label>Expiry Date:- </label><input  value="request.getParameter("edate")" readonly="readonly" ><br><br>
			         <label>Product Quantity:- </label><input value="request.getParameter("pquantity")" readonly="readonly" ><br><br>
			         <input class="q1" type="submit" value="Delete Product" ><br>
			         <input class="q1" type="submit" value="Update Product" ><br>
			         <input class="q1" type="submit" value="Update Quantity">
			       </form>
			       <br><br>
			       <a href="Home.jsp"><button class="q1">Back to Home</button></a>
			     </div>

			</body>
			</html>