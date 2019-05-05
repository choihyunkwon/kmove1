package daysum;

import java.sql.Date;

public class DaysumDTO {
	

    private String hiredate;
    private int plus,ma,us,balance;

    public DaysumDTO(String hiredate,int plus,int ma,int us,int balance) {
    	this.hiredate = hiredate;
    	this.plus = plus;
    	this.ma = ma;
    	this.us = us;
    	this.balance = balance;
    }
    
    
    
    public String gethiredate() {
        return hiredate;
    }

    public void sethiredate(String hiredate) {
        this.hiredate = hiredate;
    }
    

    public int getplus() {
        return plus;
    }

    public void setplus(int plus) {
        this.plus = plus;
    }
    
    public int getma() {
        return plus;
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