package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Registerdata {
	private String dbUrl = "jdbc:mysql://localhost:3306/userdb";
	private String dbUname = "root";
	private String dbpwd = "rootpwdgiven";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try{
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public Connection getConnection()
	{
		Connection cc = null;
		try {
			cc = DriverManager.getConnection(dbUrl, dbUname, dbpwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cc;
	}
	
	public String insert(user user) {
		loadDriver(dbDriver);
		Connection cc = getConnection();
		String result = "You have sent the information to the dataset";
		String sql = "Here is the information(?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
		ps = cc.prepareStatement(sql);
		ps.setString(1, user.getUname());
		ps.setString(2, user.getPwd());
		ps.setString(3, user.getPhone());
		ps.setString(4, user.getEmail());
		ps.setString(5, user.getPostal());
		ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
			result = "There is no information here";
		}
		return result;
	}

}
