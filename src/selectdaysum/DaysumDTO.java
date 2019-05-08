package selectdaysum;

import java.sql.Date;

public class DaysumDTO {
	

    private String insertday;
    private int plus,ma,us,balance;

    public DaysumDTO(String insertday,int plus,int ma,int us,int balance) {
    	this.insertday = insertday;
    	this.plus = plus;
    	this.ma = ma;
    	this.us = us;
    	this.balance = balance;
    }
    
    
    
    public String getinsertday() {
        return insertday;
    }

    public void setinsertday(String insertday) {
        this.insertday = insertday;
    }
    

    public int getplus() {
        return plus;
    }

    public void setplus(int plus) {
        this.plus = plus;
    }
    
    public int getma() {
        return ma;
    }

    public void setma(int ma) {
        this.ma = ma;
    }
    
    
    public int getus() {
        return us;
    }

    public void setus(int us) {
        this.us = us;
    }
    
    
    
    public int getbalance() {
        return balance;
    }

    public void setbalance(int balance) {
        this.balance = balance;
    }

    
    
}