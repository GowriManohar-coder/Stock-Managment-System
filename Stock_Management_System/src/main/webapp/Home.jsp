<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
       div {height:80%;width:30%;
            margin-left:32%;
	        margin-top:35px;
	        padding:3%;
	        border:5px solid red;
	        border-top-right-radius:30px;
	        border-bottom-left-radius:30px;
	        background-color:white;box-shadow:5px 10px 15px red}
	   input {cursor:pointer}	
		
</style>
</head>
<body>
      <b><u><h1 align="center">Welcome to Stock Management System</h1></u></b>
    <br />
   <div> 
    <table align="center">
  
        <tr>
            <td align="right">Insert Product Details:</td>
            <td align="left"><a href="Insert.jsp"><button>Insert Products</button></a></td>
        </tr>
        <tr>
            <td align="right">Delete Products:</td>
            <td align="left"><a href="Delete.jsp"><button>Delete Product</button></a></td>
        </tr>
        <tr>
            <td align="right">View All Products:</td>
            <td align="left"><a href="Select.jsp"><button>View Products</button></a></td>
        </tr>
        <tr>
            <td align="right">Update Product Details:</td>
            <td align="left"><a href="Update.jsp"><button>Update Product Details</button></a></td>
        </tr>
        <tr>
            <td align="right">Update Products Quantity:</td>
            <td align="left"><a href="Update Quantity.jsp"><button>Update Products Quantity</button></a></td>
        </tr>
        <tr>
            <td align="right">View Product Details:</td>
            <td align="left"><a href="ViewDetails.jsp"><button>View Details</button></a></td>
        </tr>
    </table>
    </div>
</body>
</html>