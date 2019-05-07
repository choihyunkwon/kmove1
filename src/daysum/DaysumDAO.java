package daysum;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class DaysumDAO{
	
	private String url="jdbc:oracle:thin:@localhost:1521:orcl";
	private String user="system";			//이것들만 수정해주세요 ~ 아이디 비번몰라유~
	private String pass = "sd72027405";


	
	public DaysumDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch (Exception e) {
			e.getMessage();
		}

	}

	public ArrayList<DaysumDTO> OracleSelect(){
		
		ArrayList<DaysumDTO> dtos = new ArrayList<DaysumDTO>();
		
		 Connection con = null;
		 Statement  stmt= null;
		 ResultSet rs =null;
		
		try {
				con = DriverManager.getConnection(url,user,pass);
				stmt = con.createStatement();
				rs = stmt.executeQuery("select * from daysum");
				
				while(rs.next()) {
					String hiredate = rs.getString("hiredate");
					int plus = rs.getInt("plus");
					int ma = rs.getInt("ma");
					int us = rs.getInt("us");
					int balance = rs.getInt("balance");
					
					DaysumDTO dto = new DaysumDTO(hiredate,plus,ma,us,balance);
					dtos.add(dto);
				}
				
			}catch(Exception e)	{
				e.printStackTrace();
			}finally {
				try {
				if (rs != null) rs.close();
				if(stmt!=null) stmt.close();
				if (con != null) con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
	}
		
		
		return dtos;
	}
	
}//class
