

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

import helpers.Date;
import helpers.connectionInfo;
import helpers.validationForm;

/**
 * Servlet implementation class contactForm
 */
@WebServlet("/contactForm")
public class contactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Details = request.getParameter("Details");
		String Status =  addContactFormToDb(request);
		if (Status.equals("error"))
			request.setAttribute("error", "An error occured, please try again.");
		
		else if(Status.equals("success"))
				request.setAttribute("status", "The form was succesfuly submited.");
		
		
		RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected String addContactFormToDb(HttpServletRequest request) {
		// set connection info	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		con = connectionInfo.connectToDB();
		
		// get the values from the form
		String Phone = request.getParameter("PhoneNumber");
		String Email = request.getParameter("Email");
		String FirstName = request.getParameter("firstname");
		String Lastname = request.getParameter("lastname");
		String Details = "asdfasdfsdafasdfa";
		String Status = "Panding";
		int ContactFormLogID = 0;
		  try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
				 rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.contactformlog");
				   
			    	// get the last Contact Form ID
				     while (rs.next())
				     {  
				    	 ContactFormLogID = rs.getInt("ContactFormLogID");
				     }
				     
				ContactFormLogID++;
				// insert the new user 
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO thegardencenterdatabase.contactformlog (ContactFormLogID, FirstName, LastName, PhoneNumber, Email, Message, ResponseStatus, LastEnteryDate) VALUES (?,?,?,?,?,?,?,?)");
					pstmt.clearParameters();       // Clears any previous parameters
					pstmt.setInt(1, ContactFormLogID);
					pstmt.setString(2, FirstName);
					pstmt.setString(3, Lastname);
					pstmt.setString(4, Phone);
					pstmt.setString(5, Email);
					pstmt.setString(6, Details);
					pstmt.setString(7, Status);
					pstmt.setString(8, Date.getTime());
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
