package selectimport;

import java.sql.Date;

public class SelectImportDTO {
	

    private String comedate,member_id;
    private int comemoney, import_balance;

    
    
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
	
	
	public int getimport_balance() {
		return import_balance;
	}

	public void setimport_balance(int import_balance) {
		this.import_balance = import_balance;
	}
	
	

	public SelectImportDTO(String comedate, int comemoney , String member_id, int import_balance) {
    	this.comedate = comedate;
    	this.comemoney = comemoney;
    	this.member_id = member_id;
    	this.import_balance = import_balance;
    }
	
    
	public SelectImportDTO(int comemoney,String member_id) {
    	this.comemoney = comemoney;
    	this.member_id = member_id;
    }
   
    
    
}
	