package View;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/ViewDetailsS")
public class ViewDetailsS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewDetailsS() {
    }
        
	protected void doget(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String Pid = req.getParameter("pid");
		
		out.println();
		
		
		try {
			String pid =" ",pname=" ",pweight=" ",pprice=" ",
					pcompany=" ",mdate=" ",edate=" ",pquantity=" ";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver found successful");
			String url = "jdbc:mysql://localhost:3306/inventory";
			String username = "root";
			String password = "root";
			Connection con;
			con =DriverManager.getConnection(url,username,password);
			System.out.println("connected with database successfully");
			
			String query = "select*from inventory.stock where pid=?";
			PreparedStatement st = con.prepareStatement(query);
			 st.setString(1, pid);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
			   pid=rs.getString("Product_ID");
			   pname=rs.getString("Product_Name");
			   pweight=rs.getString("Product_Weight");
			   pprice=rs.getString("Product_price");
			   pcompany=rs.getString("Mfg_Company");
			   mdate=rs.getString("Mfg_Date");
			   edate=rs.getString("Expiry_Date");
			   pquantity=rs.getString("Product_Quantity");
			   
			}
			con.close();
			res.sendRedirect("ViewDetails.jsp");
			
		} catch (ClassNotFoundException e) {
			System.out.println("unable to find the driver");
		}
		catch (SQLException e) {
			System.out.println("unable to connect with database");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doget(request, response);
	}

}
