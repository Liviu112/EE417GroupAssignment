package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.database.loginD;
import loginB.LoginB;

/**
 * Servlet implementation class ServletLog
 */
@WebServlet("/ServletLog")
public class ServletLog extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("PassWord");
		
		LoginB log = new LoginB();
		log.setUsername(username);
		log.setPassword(password);
		
		loginD logd = new loginD();
		if(logd.validate(log)) {
		response.sendRedirect("loginsuccess.jsp");
		}
		else {
			response.sendRedirect("ss.jsp");
		}
	}

}
