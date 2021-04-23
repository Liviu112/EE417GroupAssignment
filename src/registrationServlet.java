
import helpers.Date;

import helpers.connectionInfo;
import helpers.validationForm;

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
				System.out.println("Registration");
				// check if the user is part of the db 
				if (validationForm.passwordsMatch(request) == false)
					request.setAttribute("error", "The passwords do not match.");
				else if (validationForm.validEmail(request) == false)
					request.setAttribute("error", "Invalid email, the email should contain @ .");
				else
				{
					String Status = addRegisterFormToDb(request);
					if(Status.equals("error_username"))
						request.setAttribute("error", "Username is taken exists.");
					else if(Status.equals("error_email"))
						request.setAttribute("error", "Email is used already.");
					else if(Status.equals("error_phone"))
						request.setAttribute("error", "The Phone no. is used already.");
					
					else if(Status.equals("success"))
						request.setAttribute("status", "The form was succesfuly submited.");
				}
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
			String FirstName = request.getParameter("firstname");
			String Surname = request.getParameter("surname");
			String Address = request.getParameter("address");
			String Town = request.getParameter("town");
			String County = request.getParameter("county");
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
					    		 return "error_username";
					     }
					   
					   rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.customersinformation");
					   
				    	// check if the email exists, and get the last user ID
					     while (rs.next())
					     {  
					    	 if(Email.equals(rs.getString("Email")))
					    		 return "error_email";
					    	 if(Phone.equals(rs.getString("MobileNumber")))
					    		 return "error_phone";
					     }
					CustomerID++;
					// insert the new user 
					PreparedStatement pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.customersacc (CustomerID,Username,Pass,LastChangeDate,AccType) VALUES (?,?,?,?,?)");
						pstmt.clearParameters();       // Clears any previous parameters
						pstmt.setInt(1, CustomerID);
						pstmt.setString(2, Username);
						pstmt.setString(3, Password);
						pstmt.setString(4, Date.getTime());
						pstmt.setString(5, "normal");
						pstmt.executeUpdate();
				     
					rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.customersinformation");

					// insert the new user 
					pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.customersinformation (CustomerID, FirstName, Surname, Email, MobileNumber, Address, Eircode, Town, County, LastEnteryDate) VALUES (?,?,?,?,?,?,?,?,?,?)");
						pstmt.clearParameters();       // Clears any previous parameters
						pstmt.setInt(1, CustomerID);
						pstmt.setString(2, FirstName);
						pstmt.setString(3, Surname);
						pstmt.setString(4, Email);
						pstmt.setString(5, Phone);
						pstmt.setString(6, Address);
						pstmt.setString(7, Postal);
						pstmt.setString(8, Town);
						pstmt.setString(9, County);
						pstmt.setString(10, Date.getTime());
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
