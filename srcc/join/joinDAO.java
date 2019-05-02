package join;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class joinDAO {
	private Connection conn; 		//DB 연결 객체
	private PreparedStatement ps; 	//쿼리문 실행 객체
	private ResultSet rs; 			//select쿼리문 질의결과 객체
	
	//쿼리문실행: select - executeQuery 메소드
	//			 insert,update,delete - executeUpdate 메소드	
	
	//고객정보 삭제처리 메소드
	public void customerDelete(int id) {
		String sql = "delete from customer where id=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
		} finally {
			disconnect();
		}
	}
	
	//신규고객정보를 저장 메소드
	public void customerInsert(joinDTO dto) {
		String sql = "insert into customer "
						+ "(name, gender ) "
					+ "values (?, ?, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getGender());

			ps.executeUpdate();
			
		} catch (SQLException e) {
		} finally {
			disconnect();
		}
		
	}
	
	//고객정보를 변경 저장 메소드
	public boolean customerUpdate(joinDTO dto) {
		boolean success = true;
		String sql = "update customer "
				+ "set gender=?, "
				+ "where id=?";
		try {
			ps = conn.prepareStatement(sql);
			//준비한 쿼리문의 ? 에 데이터값을 담는다 -----
			ps.setString(1, dto.getGender());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getId());
			ps.setInt(4, dto.getId());
			//-----------------------------------------
			int cnt = ps.executeUpdate(); 
			//select: executeQuery()
			//insert,update,delete: executeUpdate()
		}catch(Exception e) {
			success = false;
		}finally {
			disconnect();
		}
		return success;
	}
	
	//선택된 고객정보 조회 메소드
	public joinDTO customerDetail(int id) {
		joinDTO dto = null;
		String sql = "select * from customer where id=?";
		try {
			ps = conn.prepareStatement(sql);
			//쿼리문실행전에 ? 있다면 ?에 값을 담는 처리가 필요함
			ps.setInt(1, id); //첫번째 ?  에 id 값을 담는다.
			rs = ps.executeQuery();
			if( rs.next() ) {
				dto = new joinDTO();
				dto.setId( rs.getInt("id") );
				dto.setName( rs.getString("name") );
				dto.setGender( rs.getString("gender") );

			}
		}catch(Exception e) {
		}finally{
			disconnect();
		}
		return dto;
	}
	
	//전체 고객목록 조회 메소드
	public ArrayList<joinDTO> list() {
		ArrayList<joinDTO> list 
					= new ArrayList<joinDTO>();
		
		String sql = "select rownum no, c.* from "
				+ "(select * from customer order by name) c";
		try {
			ps = conn.prepareStatement(sql); //실행할 쿼리문 준비
			rs = ps.executeQuery(); //준비한 쿼리문 실행
			while( rs.next() ) {
				joinDTO dto = new joinDTO();
				dto.setNo( rs.getInt("no"));
				dto.setId( rs.getInt("id") );
				dto.setName( rs.getString("name") );
				dto.setGender( rs.getString("gender") );
				dto.setEmail( rs.getString("email") );
				dto.setPhone( rs.getString("phone") );
				list.add(dto);
			}
		}catch(Exception e) {
		}finally {
			disconnect();
		}
		return list;
	}

	private void disconnect() {
		if( rs != null) {
			try{ rs.close(); }catch(Exception e) {}
		}
		if( ps != null ) {
			try{ ps.close(); }catch(Exception e) {}
		}
		if( conn != null ) {
			try{ conn.close(); }catch(Exception e) {}
		}
	}
	
	public CustomerDAO() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//127.0.0.1 = localhost
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@172.16.20.38:1521:xe", 
				"hr", "hr");
		}catch(Exception e){ }
	}
}
