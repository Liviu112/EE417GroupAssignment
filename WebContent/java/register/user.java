package register;

public class user {
	private String uname,pwd,email,phone,postal;
	

	public user() {
		super();
	}

	public user(String uname, String pwd, String email, String phone, String postal) {
		super();
		this.uname = uname;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.postal = postal;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostal() {
		return postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}
	

}
