package SelectDrawal;

public class SelectDrawalDTO {
	
	private String usedate, username, member_id;
	private int price, expense_alance;
	
	public String getUsedate() {
		return usedate;
	}
	public void setUsedate(String usedate) {
		this.usedate = usedate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getExpense_alance() {
		return expense_alance;
	}
	public void setExpense_alance(int expense_alance) {
		this.expense_alance = expense_alance;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public SelectDrawalDTO(String usedate, int price , String username, int expense_alance, String member_id) {
    	this.usedate = usedate;
    	this.price = price;
    	this.username = username;
    	this.expense_alance = expense_alance;
    	this.member_id = member_id;
    }

}
