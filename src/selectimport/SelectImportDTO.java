package selectimport;

import java.sql.Date;

public class SelectImportDTO {
	

    private String comedate,member_id;
    private int comemoney;

    
    
    public String getComedate() {
		return comedate;
	}

	public void setComedate(String comedate) {
		this.comedate = comedate;
	}
	
	
	
	
	public int getComemoney() {
		return comemoney;
	}

	public void setComemoney(int comemoney) {
		this.comemoney = comemoney;
	}

	
	
	public String getmember_id() {
		return member_id;
	}

	public void setmember_id(String member_id) {
		this.member_id = member_id;
	}
	
	
	
	

	public SelectImportDTO(String comedate, int comemoney , String member_id) {
    	this.comedate = comedate;
    	this.comemoney = comemoney;
    	this.member_id = member_id;
    }
    
    
   
    
    
}
	