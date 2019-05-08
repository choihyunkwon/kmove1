package insertdaysum;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertdaysumDAO {
	// 싱글톤
	private static InsertdaysumDAO instance = new InsertdaysumDAO();
	private InsertdaysumDAO(){}
	public static InsertdaysumDAO getInstance(){
		return instance;
	}
	
	// 데이터베이스 insert 로직
	public void insert(InsertdaysumDTO dto){
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			// JDBC Driver 로딩
			Class.forName(driver);
			// Connection 객체 생성 / DB 연결(접속)
			conn = DriverManager.getConnection(url, "system", "sd72027405");
			// 수행할 쿼리 정의 / no 컬럼의 데이터는 시퀀스로 입력하고, reg_date는 오라클의 sysdate로 입력
			ps = conn.prepareStatement("insert into daysum values(?, ?, ?, ?, ?)");
			// 매개변수로 전달된 데이터를 쿼리문의 물음표에 값 매핑
			ps.setString(1, dto.getinsertday());
			ps.setInt(2, dto.getplus());
			ps.setInt(3, dto.getma());
			ps.setInt(4, dto.getus());
			ps.setInt(5, dto.getbalance());
			// 쿼리 수행
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.getStackTrace();
			}
		}
	}
}
