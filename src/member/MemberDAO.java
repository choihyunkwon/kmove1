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
	
	//ȸ������ ó�� �޼ҵ�
	
	public int join(MemberDTO dto) {
		int cnt =0;
		String sql = "insert into member(name, id, password, gender) values(?,?,?,?)";
		System.out.println("1");
		try {
			ps=conn.prepareStatement(sql);
			System.out.println(dto.getName());
			System.out.println(dto.getUserid());
			System.out.println(dto.getGender());
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getUserid());
			ps.setString(3, dto.getUserpwd());
			ps.setString(4, dto.getGender());
			cnt = ps.executeUpdate();
			System.out.println("작동됨"+cnt);
			
		}catch(SQLException e) {
			System.out.println("작동안됨");
			
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
				//��ġ�ϴ� ȸ�������� ��´�. DTO
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
				"jdbc:oracle:thin:@172.16.20.38:1521:xe", "kmove", "1234");
			System.out.println("작동됨");
		}catch(Exception e) {
			System.out.println("앙됨");
		}
	}

}
