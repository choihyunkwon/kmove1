package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	//회원가입 처리 메소드
	
	public int join(MemberDTO dto) {
		int cnt =0;
		String sql = "insert into member(name,userid,userpwd,gender)"
				+"values(?,?,?,?)";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getUserid());
			ps.setString(3, dto.getUserpwd());
			ps.setString(4, dto.getGender());
			cnt = ps.executeUpdate();
		}catch(SQLException e) {
		} finally {
			disconnect();
		}
		return cnt;
			
		}
	public int id_check(String id) {
		int cnt =0;
		String sql = "select count(*) cnt from member "
				+"where userid = ? ";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			rs.next();
			cnt=rs.getInt("cnt");
		}catch(SQLException e) {
		}finally {
			disconnect();
		}
		return cnt;
	}
	
	public MemberDTO login(String id, String pwd) {
		MemberDTO dto = null;
		String sql="select*from member "
				+"where userid = ? and userpwd = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if(rs.next()) {
				//일치하는 회원정보를 담는다. DTO
				dto= new MemberDTO();
				dto.setName(rs.getString("name"));
				dto.setUserid(rs.getString("userid"));
				dto.setUserpwd(rs.getString("userpwd"));
			}
		} catch(SQLException e) {
		} finally {
			disconnect();
		}
		return dto;
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

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "kmpro123", "kmpro963");
		}catch(Exception e) {
		}
	}

}
