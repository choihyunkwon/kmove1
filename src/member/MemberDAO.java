package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kmove.DBConnection;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private static MemberDAO instance;
	    
	    // 싱글톤 패턴
	    public static MemberDAO getInstance(){
	        if(instance==null)
	            instance=new MemberDAO();
	        return instance;
	    }


	
	//ȸ������ ó�� �޼ҵ�
	
	public int join(MemberDTO dto) {
		int cnt =0;
		String sql = "insert into member(name, id, password, gender,balance) values(?,?,?,?,?)";
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
			ps.setInt(5, dto.getBalance());
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
		String sql = "select * from member "
				+ "where id = ? and password = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if( rs.next() ) {
				//��ġ�ϴ� ȸ�������� ��´�. DTO
				dto = new MemberDTO();
				dto.setName( rs.getString("name") );
				dto.setUserid( rs.getString("id") );
				dto.setUserpwd( rs.getString("pwd") );
				dto.setBalance(rs.getInt("balance"));
				dto.setGender(rs.getString("gender"));
				System.out.println("가저온값="+rs.getString("gender"));
			}
		} catch (SQLException e) {
		} finally {
			disconnect();
		}
		return dto;
	}
	
	// 로그인시 아이디, 비밀번호 체크 메서드
    // 아이디, 비밀번호를 인자로 받는다.
    public int loginCheck(String id, String pw) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
 
        String dbPW = ""; // db에서 꺼낸 비밀번호를 담을 변수
        int x = -1;
 
        try {
            // 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
           StringBuffer query = new StringBuffer();
            query.append("select * from member where id=? and password=?");
 //           query.append("SELECT PASSWORD FROM MEMBER WHERE ID=?");
 
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, id);
            pstmt.setString(2, pw);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // 입려된 아이디에 해당하는 비번 있을경우
            {
                dbPW = rs.getString("password"); // 비번을 변수에 넣는다.
 
                if (dbPW.equals(pw)) 
                    x = 1; // 넘겨받은 비번과 꺼내온 배번 비교. 같으면 인증성공
                else                  
                    x = 0; // DB의 비밀번호와 입력받은 비밀번호 다름, 인증실패
                
            } else {
                x = -1;// 해당 아이디가 비밀번호가 없을 경우
            }
 
            return x;
 
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end loginCheck()



	
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
				"jdbc:oracle:thin:@172.16.20.38:1521:xe", "kmpro", "1234");
	
		}catch(Exception e) {
			System.out.println("앙됨");
		}
	}
	
	  

	
	  

	

}
