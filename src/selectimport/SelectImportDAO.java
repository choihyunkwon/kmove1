package selectimport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class SelectImportDAO{
	
	private String url="jdbc:oracle:thin:@172.16.20.38:1521:xe";
	private String user="kmpro";		
	private String pass = "1234";


	
	public SelectImportDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch (Exception e) {
			e.getMessage();
		}

	}

	public ArrayList<SelectImportDTO> OracleSelect(){
		
		ArrayList<SelectImportDTO> dtos = new ArrayList<SelectImportDTO>();
		
		 Connection con = null;
		 Statement  stmt= null;
		 ResultSet rs =null;
		
		try {
				con = DriverManager.getConnection(url,user,pass);
				stmt = con.createStatement();
				rs = stmt.executeQuery("select TO_char(comedate,'yyyy-mm-dd') as comedate, sum(comemoney) as comemoney, member_id, max(import_balance) as import_balance from import group by comedate , member_id order by 1");
				
				while(rs.next()) {
					String comedate = rs.getString("comedate");
					int comemoney = rs.getInt("comemoney"); 
					String member_id = rs.getString("member_id");
					int import_balance = rs.getInt("import_balance");
					
					SelectImportDTO dto = new SelectImportDTO(comedate,comemoney,member_id,import_balance);
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
	
	public ArrayList<SelectImportDTO> sumSelect(){
		
		ArrayList<SelectImportDTO> dtos = new ArrayList<SelectImportDTO>();
		
		 Connection con = null;
		 Statement  stmt= null;
		 ResultSet rs =null;
		
		try {
				con = DriverManager.getConnection(url,user,pass);
				stmt = con.createStatement();
				rs = stmt.executeQuery("select TO_char(comedate,'yyyy-mm') as comedate, sum(comemoney) as comemoney, member_id, max(import_balance) as import_balance from import group by TO_char(comedate,'yyyy-mm') , member_id order by 1");
				
				while(rs.next()) {
					String comedate = rs.getString("comedate");
					int comemoney = rs.getInt("comemoney"); 
					String member_id = rs.getString("member_id");
					int import_balance = rs.getInt("import_balance");
					
					SelectImportDTO dto = new SelectImportDTO(comedate,comemoney,member_id,import_balance);
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

	public ArrayList<SelectImportDTO> yearSelect(){
		
		ArrayList<SelectImportDTO> dtos = new ArrayList<SelectImportDTO>();
		
		 Connection con = null;
		 Statement  stmt= null;
		 ResultSet rs =null;
		
		try {
				con = DriverManager.getConnection(url,user,pass);
				stmt = con.createStatement();
				rs = stmt.executeQuery("select TO_char(comedate,'yyyy') as comedate, sum(comemoney) as comemoney, member_id, max(import_balance) as import_balance from import group by TO_char(comedate,'yyyy') , member_id order by 1");
				
				while(rs.next()) {
					String comedate = rs.getString("comedate");
					int comemoney = rs.getInt("comemoney"); 
					String member_id = rs.getString("member_id");
					int import_balance = rs.getInt("import_balance");
					
					SelectImportDTO dto = new SelectImportDTO(comedate,comemoney,member_id,import_balance);
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
