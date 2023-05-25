<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Product Details</title>
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
       <form style="font-size:25px" action="InsertS">
         <label>Product Id:- </label><input type="text" name="pid" placeholder="Product Id"><br><br>
         <label>Product name:- </label><input type="text" name="pname" placeholder="Product name"><br><br>
         <label>Product Weight:- </label><input type="number" name="pweight" placeholder="Product Weight"><br><br>
         <label>Product price:- </label><input type="number" name="pprice" placeholder="Product price"><br><br>
         <label>Mfg Company:- </label><input type="email" name="pcompany" placeholder="Mfg Company"><br><br>
         <label>Mfg Date:- </label><input type="date" name="mdate" placeholder="Mfg Date"><br><br>
         <label>Expiry Date:- </label><input type="date" name="edate" placeholder="Expiry Date" ><br><br>
         <label>Product Quantity:- </label><input type="number" name="pquantity" placeholder="Product Quantity"><br><br>
         <input class="q1" type="submit" >
       </form>
       <br><br>
       <a href="Home.jsp"><button class="q1">Back to Home</button></a>
     </div>
</body>
</html>