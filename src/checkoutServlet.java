

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
 * Servlet implementation class checkoutServlet
 */
@WebServlet("/checkoutServlet")
public class checkoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		session = request.getSession();
		String Status= checkoutFormToDb(request);
		if (Status.equals("error"))
			request.setAttribute("error", "An error occured, please try again.");
		
		else if(Status.equals("success"))
				request.setAttribute("status", "The payment was succesfuly.");
		
		
		RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected String checkoutFormToDb(HttpServletRequest request) {
		// set connection info	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		con = connectionInfo.connectToDB();
		int CustomerID =-1;
		
		// get the values from the form
		String Username = request.getParameter("uname");
		String Password = request.getParameter("pwd");
		String Phone = request.getParameter("phone");
		String Email = request.getParameter("email");
		String Postal = request.getParameter("postal");
		String FirstName = request.getParameter("firstname");
		String Surname = request.getParameter("surname");
		String Address = request.getParameter("address");
		String Town = request.getParameter("town");
		String Country = request.getParameter("Country");
		String City = request.getParameter("city");
		String Region = "Dublin";
		
		String DeliveryMethod="";
		if(request.getParameter("delevery1")!=null)
			DeliveryMethod = "Standard Shipping";
		else if(request.getParameter("delevery2")!=null)
			DeliveryMethod = "Collection";
		
		String CardType="";
		if(request.getParameter("cardType1")!=null)
			CardType = "Cread/Debit";
		else if(request.getParameter("cardType1")!=null)
			CardType = "PayPal";
		
		String CardNumber = request.getParameter("cardNO");
		String ExpirationDate = request.getParameter("expDate");
		int SecurityCode = Integer.parseInt(request.getParameter("VID"));
		String CardHolderName = request.getParameter("HolderName");
		
		
		String ProductsID = "1,4,5,2";
		String Quantity = "2,4,2,1";
		double TotalValue = 200.68;
		
		
		System.out.println("The region is " + Region);
		  try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
			     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.billingdetails");
			     int billingID = 0;
			    	//  get the last user billingID
				     while (rs.next())
				     {  
				    	 billingID =rs.getInt("billingDetailsID");
				     }
				  billingID++;
				  
				// insert the new entery in db 
					PreparedStatement pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.billingdetails (billingDetailsID, Email, FirstName, LastName, Address, City, Country, Region, LastEnteryDate, PostalCode, Phone) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
						pstmt.clearParameters();       // Clears any previous parameters
						pstmt.setInt(1, billingID);
						pstmt.setString(2, Email);
						pstmt.setString(3, FirstName);
						pstmt.setString(4, Surname);
						pstmt.setString(5, Address);
						pstmt.setString(6, City);
						pstmt.setString(7, Country);
						pstmt.setString(8, Region);
						pstmt.setString(9, Date.getTime());
						pstmt.setString(10, Postal);
						pstmt.setString(11, Phone);
						pstmt.executeUpdate();
		  
					// move to the paymentsdetails
				     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.paymentsdetails");
				     int PaymentID = 0;
				    	//  get the last user billingID
					     while (rs.next())
					     {  
					    	 PaymentID =rs.getInt("PaymentID");
					     }
					     PaymentID++;
					  
					// insert the new entery in db 
						pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.paymentsdetails (PaymentID, CardType, CardNumber, ExpirationDate, SecurityCode, CardHolderName,EnteryDate) VALUES (?,?,?,?,?,?,?)");
							pstmt.clearParameters();       // Clears any previous parameters
							pstmt.setInt(1, PaymentID);
							pstmt.setString(2, CardType);
							pstmt.setString(3, CardNumber);
							pstmt.setString(4, ExpirationDate);
							pstmt.setInt(5, SecurityCode);
							pstmt.setString(6, CardHolderName);
							pstmt.setString(7, Date.getTime());
							pstmt.executeUpdate();
					
					// move to the transactionshistory table 
						rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.transactionshistory");
						int transactionID = 0;
						    //  get the last user billingID
							while (rs.next())
							 {  
								transactionID =rs.getInt("transactionID");
							 }
						transactionID++;
							  
						// insert the new entery in db 
						  pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.transactionshistory (transactionID,PaymentID, ProductsID, CustomerID, Quantity, TotalValue, TransactionDate, billingDetailsID, DeliveryMethod) VALUES (?,?,?,?,?,?,?,?,?)");
							pstmt.clearParameters();       // Clears any previous parameters
							pstmt.setInt(1, transactionID);
							pstmt.setInt(2, PaymentID);
							pstmt.setString(3, ProductsID);
							pstmt.setInt(4, (int) session.getAttribute("CustomerID"));
							pstmt.setString(5, Quantity);
							pstmt.setDouble(6, TotalValue);
							pstmt.setString(7, Date.getTime());
							pstmt.setInt(8, billingID);
							pstmt.setString(9, DeliveryMethod);
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
		  return "success";
	}
	
}
