package helpers;

import javax.servlet.http.HttpServletRequest;

public class validationForm {
	public static boolean passwordsMatch(HttpServletRequest request) {
		if(request.getParameter("pwd").toString().equals(request.getParameter("Check PassWord").toString()))		
			return true;
		return false;
	}
	
	public static boolean validEmail(HttpServletRequest request) {
		if(request.getParameter("email").contains("@"))
			return true;
		return false;
	}
}