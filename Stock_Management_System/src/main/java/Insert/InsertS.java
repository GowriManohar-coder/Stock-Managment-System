package Insert;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/InsertS")
public class InsertS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        
    	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    		
    		res.setContentType("text/html");
    		PrintWriter out = res.getWriter();
		
		String pid = req.getParameter("pid");
		String pname = req.getParameter("pname");
		String pweight = req.getParameter("pweight");
		String pprice = req.getParameter("pprice");
		String pcompany = req.getParameter("pcompany");
		String mdate = req.getParameter("mdate");
		String edate = req.getParameter("edate");
		String pquantity = req.getParameter("pquantity");
		
		out.println("<html>\r\n"
				+ "  <head>\r\n"
				+ "      <title> Prices </title>\r\n"
				+ "	  <style>\r\n"
				+ "	  table,th,td {border-width:2px;\r\n"
				+ "	      border-style:solid;\r\n"
				+ "		  padding:10px;\r\n"
				+ "		  color:red;\r\n"
				+ "		  text-align:center}\r\n"
				+ "	  body{\r\n"
				+ "          background-repeat:no-repeat;\r\n"
				+ "          background-size:100% 100%;\r\n"
				+ "          background-attachment:fixed;}\r\n"
				+ "	  </style>\r\n"
				+ "  </head>"
				+ "<body>"
				+ "<div width=\"50%\" height=\"309px\">\r\n"
				+ "     <table width=\"674px\" height=\"309px\">\r\n"
				+ "	 <thead>\r\n"
				+ "	     <tr>\r\n"
				+ "	        <th>Product Id</th>\r\n"
				+ "	        <th>Product Name</th>\r\n"
				+ "	        <th>Product Weight</th>\r\n"
				+ "			<th>Product price</th>\r\n"
				+ "	        <th>Product Company</th>\r\n"
				+ "	        <th>Mfg Date</th>\r\n"
				+ "	        <th>Expiry Date</th>\r\n"
				+ "			<th>Product Quantity</th>\r\n"
				+ "	     </tr>\r\n"
				+ "		 \r\n"
				+ "	 </thead>\r\n"
				+ "	 <tbody>\r\n"
				+ "	    <tr>\r\n"
				+ "		    <td>"+pid+"</td>\r\n"
				+ "			<td>"+pname+"</td>\r\n"
				+ "			<td>"+pweight+"</td>\r\n"
				+ "			<td>"+pprice+"</td>\r\n"
				+ "		    <td>"+pcompany+"</td>\r\n"
				+ "			<td>"+mdate+"</td>\r\n"
				+ "			<td>"+edate+"</td>\r\n"
				+ "			<td>"+pquantity+"</td>\r\n"
				+ "		</tr>"
				+ "</table>"
				+ "</body>");
		
		
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    System.out.println("Driver Found Successfully..");
		    
		    String url = "jdbc:mysql://localhost:3306/inventory";
		    String username = "root";
		    String password = "root";
		    
		    Connection con;
		    
		    con = DriverManager.getConnection(url,username,password);
		    
		    System.out.println("Connected with Database Successfully...");
		    
		    String query = "insert into stock values(?,?,?,?,?,?,?,?)";
		    
		    PreparedStatement ps = con.prepareStatement(query);
		    ps.setString(1, pid);
		    ps.setString(2, pname);
		    ps.setString(3, pweight);
		    ps.setString(4, pprice);
		    ps.setString(5, pcompany);
		    ps.setString(6, mdate);
		    ps.setString(7, edate);
		    ps.setString(8, pquantity);
		    ps.execute();
		    
		    System.out.println("Data has been inserted Successfully...");
		    
		}catch(ClassNotFoundException e) {
			System.out.println("Unable to find the Driver class.");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
