package WithDrawal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import member.MemberDAO;

public class WithDrawalDAO {
	// 싱글톤
	private static WithDrawalDAO instance = new WithDrawalDAO();
	public static WithDrawalDAO getInstance(){
		if(instance==null)
            instance=new WithDrawalDAO();
		return instance;
	}
	
	// 데이터베이스 insert 로직
	public void insert(WithDrawalDTO dto){
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
			ps = conn.prepareStatement("INSERT INTO EXPENSE VALUES(?,?,?,?,?)");
			// 매개변수로 전달된 데이터를 쿼리문의 물음표에 값 매핑
			ps.setString(1, dto.getUsename());
			ps.setInt(2, dto.getPrice());
			ps.setInt(3, dto.getExpense_alance());
			ps.setString(4, dto.getMember_id());
			ps.setString(5, dto.getUsedate());
			// 쿼리 수행
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
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
	
	
	public void update(WithDrawalDTO data) {
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
			ppst.setInt(1, data.getExpense_alance());
			ppst.setString(2, data.getMember_id());
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
	
	
