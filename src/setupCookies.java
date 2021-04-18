import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class setupCookies {

	// create user's cookies
	public static void createCookies(HttpServletRequest request, HttpServletResponse response) {
		// check if the user wants to be remembered
		if (request.getParameter("RememberMe") != null) {
			System.out.println("Create the user's cookies.");
			Cookie ckname = new Cookie("ckname",request.getSession().getAttribute("User").toString());
			ckname.setMaxAge(40000);
			response.addCookie(ckname);
			Cookie ckpass = new Cookie("ckpass", request.getSession().getAttribute("Pass").toString());
			ckpass.setMaxAge(40000);
			response.addCookie(ckpass);
			Cookie ckid = new Cookie("ckid", ""+request.getSession().getAttribute("CustomerID").toString());
			ckid.setMaxAge(40000);
			response.addCookie(ckid);
		}
	}
	
	// delete cookies
	public static void deleteCookies(HttpServletRequest request, HttpServletResponse response,ServletConfig config) {
		// remove the user
				HttpSession session = request.getSession();
				session.removeAttribute("Username");
				session.removeAttribute("userType");
				config.getServletContext().removeAttribute("Username");
				config.getServletContext().removeAttribute("Password");
				Cookie ck1[] = request.getCookies();
				if (ck1 != null)
					for (Cookie ck : ck1) {
						if (ck.getName().equalsIgnoreCase("ckname") || ck.getName().equalsIgnoreCase("ckpass") || ck.getName().equalsIgnoreCase("ckid")) {
							ck.setMaxAge(0);
							response.addCookie(ck);	
						}
					}
	}
	
	// check if cookies exist 
	public static String checkCookies(HttpServletRequest request, HttpServletResponse response,ServletConfig config) {
		String user = "";
		String pass = "";
		String userId = "";
		// check if there are cookies with the name and password 
		Cookie ck1[] = request.getCookies();
		if (ck1 != null)
			for (Cookie ck : ck1) {
				if (ck.getName().equalsIgnoreCase("ckname")) {
					user = ck.getValue();
				} else if (ck.getName().equalsIgnoreCase("ckpass")) {
					pass = ck.getValue();
				}else if (ck.getName().equalsIgnoreCase("ckID")) {
					userId = ck.getValue();
				}
			}
		if (user.isEmpty() || pass.isEmpty() || userId.isEmpty())
			return "Refused"; 
		else {
			config.getServletContext().setAttribute("Username", user);
			config.getServletContext().setAttribute("Password", pass);
			config.getServletContext().setAttribute("userId", userId);
			return "Accepted"; 

		}
		}

}
