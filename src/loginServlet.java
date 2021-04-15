
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

/**
 * Servlet implementation class logInServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int userID = -1;
	private HttpSession session;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get the session
		session = request.getSession();

		// check if the user is part of the db 
		/*int userAuthentication = checkDbForUser(request);
		System.out.println(userAuthentication);
		System.out.println("Who loged in: ");
		System.out.println("User: " + session.getAttribute("User") + 
						   "\nCustomerID: " + session.getAttribute("CustomerID") + 
						   "\nUserType: " + session.getAttribute("UserType"));
		
		// 0 means the password and username matched 
		if (userAuthentication == 0)
			response.sendRedirect("index.jsp"); // redirect the user to the index page and print the new menu 
		// set the error message
		else {
			if (userAuthentication == -1) 
				request.setAttribute("error", "Wrong passward");
			else if (userAuthentication == -2)
				request.setAttribute("error", "Wrong username or passward");
		}
		// send the errors to the signin page
		RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
		rd.include(request, response);*/
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected int checkDbForUser(HttpServletRequest request) {
		String Username = "";
		String Password = "";

		// check if the user was logged in before
		if (this.getServletConfig().getServletContext().getAttribute("username") != null) {
			Username = this.getServletConfig().getServletContext().getAttribute("username").toString();
		} else if (Username.isEmpty())
			Username = request.getParameter("username");
		System.out.println("This is the username " + Username);
		// check if the user was logged in before
		if (this.getServletConfig().getServletContext().getAttribute("password") != null) {
			Password = this.getServletConfig().getServletContext().getAttribute("password").toString();
		} else if (Password.isEmpty())
			Password = request.getParameter("password");
		
		System.out.println("This is the passward " + Password);
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		con = connectionInfo.connectToDB();


		  try {
			  System.out.println("\nConnection Successful..... creating statement....");
		     	 stmt = con.createStatement();
			     rs = stmt.executeQuery("SELECT * FROM thegardencenterdatabase.customersacc");
			     // find the user in the db
			     while (rs.next())
			     {  
			    	if (Username.equals(rs.getString("Username"))) {
						if (Password.equals(rs.getString("Pass"))) {
							session.setAttribute("CustomerID", rs.getInt("CustomerID"));
							session.setAttribute("User", rs.getString("Username"));
							session.setAttribute("UserType", rs.getString("AccType"));
							
							// TO DO Check if the user wants to be saved 
							return 0;
						} else {
							return -1;
						}
			    	}
			     }
		  }
		        catch (SQLException e) {
			     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
		            while (e != null) {
			         System.out.println(e.getMessage());
		                e = e.getNextException();
			     }
		            System.exit(0);
		        }
		  return -2;
	}

}
