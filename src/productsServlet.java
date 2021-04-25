

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import helpers.Date;
import helpers.connectionInfo;

/**
 * Servlet implementation class productsServlet
 */
@WebServlet("/productsServlet")
public class productsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//addProducts(request);
		//modifyStockProducts(request);
		session = request.getSession();
		getProducts(request);
		System.out.println(session.getAttribute("ProductName"));
		RequestDispatcher rd = request.getRequestDispatcher("products.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected String addProducts(HttpServletRequest request) {
		// set connection info	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		con = connectionInfo.connectToDB();
		int ProductID =-1;
		
		// get the values from the form
		String ScientificName = "ScientificName"; //request.getParameter("pwd")
		String CommonName = "CommonName";
		String Dimension = "Dimension";
		String Colour = "Colour";
		double Price = 50.123;
		String Maturity = "Maturity";
		int Availability = 100;
		
		  try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
			     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.productsinformation");

			    	// find the last product in the table
				     while (rs.next())
				     {  
				    	 System.out.println("the " + rs.getInt("ProductID"));
				    	 ProductID = rs.getInt("ProductID");
				     }
				
				ProductID++;
				// insert the new user 
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.productsinformation "
						+ "(ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh) VALUES (?,?,?,?,?,?,?,?,?)");
					pstmt.clearParameters();       // Clears any previous parameters
					pstmt.setInt(1, ProductID);
					pstmt.setString(2, ScientificName);
					pstmt.setString(3, CommonName);
					pstmt.setString(4, Dimension);
					pstmt.setString(5, Colour);
					pstmt.setDouble(6, Price);
					pstmt.setString(7, Maturity);
					pstmt.setInt(8, Availability);
					pstmt.setString(9, Date.getTime());
					pstmt.executeUpdate();
		  }
		        catch (SQLException e) {
			     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
		            while (e != null) {
			         System.out.println(e.getMessage());
		                e = e.getNextException();
			     }
		            System.exit(0);
		        }
		  System.out.println("Product added! ");
		  return "success";
	}
	
	protected String modifyStockProducts(HttpServletRequest request) {
		// set connection info	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		con = connectionInfo.connectToDB();
		int ProductID =-1;
		
		// get the values from the form
		String ScientificName = "ScientificName"; //request.getParameter("pwd")
		String CommonName = "CommonName";
		String Dimension = "Dimension";
		String Colour = "Colour";
		double Price = 50.123;
		String Maturity = "Maturity";
		int Availability = 100;
		

		  try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
			     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.productsinformation");

			    	// find the last product in the table
				     while (rs.next())
				     {
				    	 System.out.println("the " + rs.getInt("ProductID"));
				    	 ProductID = rs.getInt("ProductID");
				     }
				
				ProductID++;
				// insert the new user 
				PreparedStatement pstmt = con.prepareStatement("UPDATE thegardencenterdatabase.productsinformation  SET ModifiedBy = ? WHERE ProductID = ?");
					pstmt.clearParameters();       // Clears any previous parameters
					pstmt.setInt(1, 90);
					pstmt.setInt(2, 0);

					pstmt.executeUpdate();
		  }
		        catch (SQLException e) {
			     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
		            while (e != null) {
			         System.out.println(e.getMessage());
		                e = e.getNextException();
			     }
		            System.exit(0);
		        }
		  System.out.println("Product added! ");
		  return "success";
	}
	
	protected void getProducts(HttpServletRequest request) {
		// set connection info	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		con = connectionInfo.connectToDB();
		
		// get the values from the form
		List<String> ProductName = new ArrayList<String>();
		List<String> ImageLocation = new ArrayList<String>();
		List<Integer> ProductID = new ArrayList<Integer>();
		List<Float> Price = new ArrayList<Float>();
		// get product info  
		try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
			     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.productsinformation");

			    	// find the last product in the table
				     while (rs.next())
				     {
				    	 System.out.println("the " + rs.getInt("ProductID"));
				    	 ProductID.add(rs.getInt("ProductID"));
				    	 ProductName.add(rs.getString("ScientificName"));
				    	 Price.add(rs.getFloat("Price"));
				     }
				
				     // add the list to the session
				     session.setAttribute("ProductName", ProductName);
				     session.setAttribute("ProductID", ProductID);
				     session.setAttribute("Price", Price);
		  }
		  
		        catch (SQLException e) {
			     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
		            while (e != null) {
			         System.out.println(e.getMessage());
		                e = e.getNextException();
			     }
		            System.exit(0);
		        }
		  //get product image
		try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
			     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.productimages");

			    	// find the last product in the table
				     while (rs.next())
				     {
						  ImageLocation.add(rs.getString("Location"));
				     }
				
				     // add the list to the session
					  session.setAttribute("ImageLocation", ImageLocation);
		  }
		  
		        catch (SQLException e) {
			     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
		            while (e != null) {
			         System.out.println(e.getMessage());
		                e = e.getNextException();
			     }
		            System.exit(0);
		        }	 
	}

}