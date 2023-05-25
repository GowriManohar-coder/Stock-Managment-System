<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products Details</title>
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
   <div>
       <form style="font-size:25px" action="Select">
         <label>Enter Product Id:- </label><input type="text" name="pid" placeholder="Product Id"><br><br>
         <input class="q1" type="submit" value="Get Details">
       </form>
       <br><br>
       <a href="Home.jsp"><button class="q1">Back to Home</button></a>
   </div>
</body>
</html>