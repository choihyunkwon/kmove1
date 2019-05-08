package member;

public class MemberDTO {
	private String id, password, name, gender;
	private int balance;
	
	public String getUserid() {
		return  id;
	}
	public void setUserid(String  id) {
		this. id =  id;
	}
	public String getUserpwd() {
		return password;
	}

	public void setUserpwd(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender=gender;
	}
	public int getBalance() {
		return balance;
		
	}
	public void setBalance(int balance) {
		this.balance=balance;
	}
	
}
