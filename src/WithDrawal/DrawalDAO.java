package WithDrawal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DrawalDAO {
	private static DrawalDAO instance = new DrawalDAO();
	private DrawalDAO(){}
	public static DrawalDAO getInstance(){
		return instance;
	}
	
	public void insert(DrawalDTO dto) {
		String driver = "oracle.jdbc.driver.OracleDriber";
		String url = "jdbc:oracle:thin:@172.16.20.38:1521:xe";
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,"kmpro","1234");
			ps = conn.prepareStatement("INSERT INTO EXPENSE VALUES(?,?,?,?,?)");
			ps.setString(1, dto.getUsername());
			ps.setInt(2, dto.getPrice());
			ps.setInt(3, dto.getExpense_alance());
			ps.setString(4, dto.getMember_id());
			ps.setString(5, dto.getUsedate());
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.getStackTrace();
			}
		}
	}

}
