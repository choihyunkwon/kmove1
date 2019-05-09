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
				rs = stmt.executeQuery("select * from import");
				
				while(rs.next()) {
					String comedate = rs.getString("comedate");
					int comemoney = rs.getInt("comemoney");
					String member_id = rs.getString("member_id");
					
					SelectImportDTO dto = new SelectImportDTO(comedate,comemoney,member_id);
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
