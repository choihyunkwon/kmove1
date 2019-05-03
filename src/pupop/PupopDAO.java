package pupop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PupopDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public int pupop(PupopDTO dto) {
		int cnt =0;
		String sql = "";
		System.out.println("1");
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getDate());
			ps.setInt(2, dto.getPrice());
			ps.setString(3, dto.getMember_id());
			cnt = ps.executeUpdate();
			System.out.println("작동됨"+cnt);
			
		}catch(SQLException e) {
			System.out.println("작동안됨");
			
		} finally {
			disconnect();
		}
		return cnt;
	}
	
	
	private void disconnect() {
		if( rs!=null ) {
			try{ rs.close(); }catch(Exception e) {}
		}
		if( ps!=null ) {
			try{ ps.close(); }catch(Exception e) {}
		}
		if( conn!=null ) {
			try{ conn.close(); }catch(Exception e) {}
		}
	}
	
	public PupopDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@172.16.20.38:1521:xe", "kmove", "1234");
		}catch(Exception e) {
			System.out.println("앙됨");
		}
	}
	
}
