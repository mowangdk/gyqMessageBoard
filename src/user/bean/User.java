package user.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.TableGenerator;

@Entity(name = "UserB")
@SequenceGenerator(name="userGenerator",sequenceName="HIBERNATE_SEQUENCE")
public class User {
	private int UserID;
	private String username;
	private String userpass;
	private String uname;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	private int isadmin;
	private String remark;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="userGenerator")
	public int getUserID() {
		return UserID;
	}

	public void setUserID(int userID) {
		UserID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getIsadmin() {
		return isadmin;
	}

	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public User(String username, String userpass, String uname, int isadmin,
			String remark) {
		super();

		this.username = username;
		this.userpass = userpass;
		this.uname = uname;
		this.isadmin = isadmin;
		this.remark = remark;
	}

}
