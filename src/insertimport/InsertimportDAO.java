package insertimport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertimportDAO {
	// 싱글톤
	private static InsertimportDAO instance = new InsertimportDAO();
	private InsertimportDAO(){}
	public static InsertimportDAO getInstance(){
		return instance;
	}
	
	// 데이터베이스 insert 로직
	public void insert(InsertimportDTO dto){
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@172.16.20.38:1521:xe";
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			// JDBC Driver 로딩
			Class.forName(driver);
			// Connection 객체 생성 / DB 연결(접속)
			conn = DriverManager.getConnection(url, "kmpro", "1234");
			// 수행할 쿼리 정의 / no 컬럼의 데이터는 시퀀스로 입력하고, reg_date는 오라클의 sysdate로 입력
			ps = conn.prepareStatement("INSERT INTO IMPORT VALUES(?,?,?,?)");
			// 매개변수로 전달된 데이터를 쿼리문의 물음표에 값 매핑
			ps.setString(1, dto.getcomedate());
			ps.setInt(2, dto.getcomemoney());
			ps.setString(3, dto.getmember_id());
			ps.setInt(4, dto.getimport_balance()); 
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
	
	
	public void update(InsertimportDTO data) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@172.16.20.38:1521:xe";
		Connection conn = null;
		PreparedStatement ppst = null;
		try {
			// JDBC Driver 로딩
			Class.forName(driver);
			// Connection 객체 생성 / DB 연결(접속)
			conn = DriverManager.getConnection(url, "kmpro", "1234");
			// 수행할 쿼리 정의 / no에 해당하는 데이터를 수정
			ppst = conn.prepareStatement("update member set balance = ? where id = ?");
			// 매개변수로 전달된 데이터를 쿼리문의 물음표에 값 매핑
			ppst.setInt(1, data.getimport_balance());
			ppst.setString(2, data.getmember_id());
			// 쿼리 수행
			ppst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ppst != null)
					ppst.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.getStackTrace();
			}
		}
	}
	
	public void delete(InsertimportDTO data) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@172.16.20.38:1521:xe";
		Connection conn = null;
		PreparedStatement ppst = null;
		try {
			// JDBC Driver 로딩
			Class.forName(driver);
			// Connection 객체 생성 / DB 연결(접속)
			conn = DriverManager.getConnection(url, "kmpro", "1234");
			// 수행할 쿼리 정의 / no에 해당하는 데이터를 수정
			ppst = conn.prepareStatement("update member set balance = ? where id = ?");
			// 매개변수로 전달된 데이터를 쿼리문의 물음표에 값 매핑
			ppst.setInt(1, data.getimport_balance());
			ppst.setString(2, data.getmember_id());
			// 쿼리 수행
			ppst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ppst != null)
					ppst.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.getStackTrace();
			}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//cass
	
	
