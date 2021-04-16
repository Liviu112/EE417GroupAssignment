
import helpers.Date;

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

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get the session
				session = request.getSession();
				System.out.println("Registration test");
				// check if the user is part of the db 
				String Status = addRegisterFormToDb(request);
				if(Status.equals("error"))
					request.setAttribute("error", "Username already exists.");
				if(Status.equals("success"))
					request.setAttribute("status", "The form was succesfuly submited.");
				
				RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
				rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected String addRegisterFormToDb(HttpServletRequest request) {
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

			  try {
				  System.out.println("\nConnection Successful..... creating statement....");
			     	 stmt = con.createStatement();
				     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.customersacc");

				    	// check if the user exists, and get the last user ID
					     while (rs.next())
					     {  
					    	 System.out.println("the " + rs.getInt("CustomerID"));
					    	 CustomerID = rs.getInt("CustomerID");
					    	 if(Username.equals(rs.getString("Username")))
					    		 return "error";
					     }

					// insert the new user 
					PreparedStatement pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.customersacc (CustomerID,Username,Pass,LastChangeDate,AccType) VALUES (?,?,?,?,?)");
						pstmt.clearParameters();       // Clears any previous parameters
						pstmt.setInt(1, CustomerID+1);
						pstmt.setString(2, Username);
						pstmt.setString(3, Password);
						pstmt.setString(4, Date.getTime());
						pstmt.setString(5, "normal");
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
