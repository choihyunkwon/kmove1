package SelectDrawal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class SelectDrawalDAO {
	
	private String url="jdbc:oracle:thin:@172.16.20.38:1521:xe";
	private String user="kmpro";		
	private String pass = "1234";
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public SelectDrawalDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.getMessage();
		}
	}
	
	public ArrayList<SelectDrawalDTO> OracleDrawal(){
		ArrayList<SelectDrawalDTO> dtos = new ArrayList<SelectDrawalDTO>();
		
		try {
				con = DriverManager.getConnection(url,user,pass);
				stmt = con.createStatement();
				rs = stmt.executeQuery("select * from expense");
				
				while(rs.next()) {
					String username = rs.getString("username");
					int price = rs.getInt("price");
					int expense_alance = rs.getInt("expense_alance");
					String member_id = rs.getString("member_id");
					String usedate = rs.getString("usedate");
					
					SelectDrawalDTO dto = new SelectDrawalDTO(usedate,price,username,expense_alance,member_id);
					dtos.add(dto);
				}
		}catch(Exception e) {
			e.getMessage();
		}finally {
			disconnect();
		}
		
		return dtos;
	}
	
	public void disconnect() {
	try{
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(con != null) con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}