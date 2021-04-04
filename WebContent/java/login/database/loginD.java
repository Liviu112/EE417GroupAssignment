package login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import loginB.LoginB;

public class loginD {
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
	public boolean validate(LoginB log) {
boolean status = false;
		
		loadDriver(dbDriver);
		Connection cc = getConnection();
		
		String sql = "select * from login where username = ? and password =?";
		PreparedStatement ps;
		try {
		ps = cc.prepareStatement(sql);
		ps.setString(1, log.getUsername());
		ps.setString(2, log.getPassword());
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;

		
	}
}

