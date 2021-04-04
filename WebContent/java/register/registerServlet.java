package register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/Register")
public class registerServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  String uname = request.getParameter("uname");
	  String pwd = request.getParameter("pwd");
	  String phone = request.getParameter("phone");
	  String email = request.getParameter("email");
	  String postal = request.getParameter("postal");
	  
	  user user = new user(uname, pwd, phone, email, postal);
	  Registerdata rd = new Registerdata();
	  String result = rd.insert(user);
	  response.getWriter().print(result);
	}

}
