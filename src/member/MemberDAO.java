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
	    
	    // �떛湲��넠 �뙣�꽩
	    public static MemberDAO getInstance(){
	        if(instance==null)
	            instance=new MemberDAO();
	        return instance;
	    }



	
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
			System.out.println("�옉�룞�맖"+cnt);
			
		}catch(SQLException e) {
			System.out.println("�옉�룞�븞�맖");
			
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
				//占쏙옙치占싹댐옙 회占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙쨈占�. DTO
				dto = new MemberDTO();
				System.out.println(rs.getString("gender"));
				dto.setName( rs.getString("name") );
				dto.setUserid( rs.getString("id") );
				dto.setUserpwd( rs.getString("pwd") );
				dto.setBalance(rs.getInt("balance"));
				dto.setGender(rs.getString("gender"));
			}
		} catch (SQLException e) {
		} finally {
			disconnect();
		}
		return dto;
	}
	
	// 濡쒓렇�씤�떆 �븘�씠�뵒, 鍮꾨�踰덊샇 泥댄겕 硫붿꽌�뱶
    // �븘�씠�뵒, 鍮꾨�踰덊샇瑜� �씤�옄濡� 諛쏅뒗�떎.
    public int loginCheck(String id, String pw) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
 
        String dbPW = ""; // db�뿉�꽌 爰쇰궦 鍮꾨�踰덊샇瑜� �떞�쓣 蹂��닔
        int x = -1;
 
        try {
            // 荑쇰━ - 癒쇱� �엯�젰�맂 �븘�씠�뵒濡� DB�뿉�꽌 鍮꾨�踰덊샇瑜� 議고쉶�븳�떎.
           StringBuffer query = new StringBuffer();
            query.append("select * from member where id=? and password=?");
 //           query.append("SELECT PASSWORD FROM MEMBER WHERE ID=?");
 
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, id);
            pstmt.setString(2, pw);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // �엯�젮�맂 �븘�씠�뵒�뿉 �빐�떦�븯�뒗 鍮꾨쾲 �엳�쓣寃쎌슦
            {
                dbPW = rs.getString("password"); // 鍮꾨쾲�쓣 蹂��닔�뿉 �꽔�뒗�떎.
 
                if (dbPW.equals(pw)) 
                    x = 1; // �꽆寃⑤컺�� 鍮꾨쾲怨� 爰쇰궡�삩 諛곕쾲 鍮꾧탳. 媛숈쑝硫� �씤利앹꽦怨�
                else                  
                    x = 0; // DB�쓽 鍮꾨�踰덊샇�� �엯�젰諛쏆� 鍮꾨�踰덊샇 �떎由�, �씤利앹떎�뙣
                
            } else {
                x = -1;// �빐�떦 �븘�씠�뵒媛� 鍮꾨�踰덊샇媛� �뾾�쓣 寃쎌슦
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
    public MemberDTO getUserInfo(String id)
    {
         Connection conn = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         MemberDTO member = null;

         try {
             // 쿼리
             StringBuffer query = new StringBuffer();
             query.append("SELECT * FROM MEMBER WHERE ID=?");

             conn = DBConnection.getConnection();
             pstmt = conn.prepareStatement(query.toString());
             pstmt.setString(1, id);
             rs = pstmt.executeQuery();

             if (rs.next()) // 회원정보를 DTO에 담는다.
             {
                 
                 // 자바빈에 정보를 담는다.
                 member = new MemberDTO();
                 member.setUserid(rs.getString("id"));
                 member.setUserpwd(rs.getString("password"));
                 member.setName(rs.getString("name"));
                 member.setGender(rs.getString("gender"));
             }

             return member;

         } catch (Exception sqle) {
             throw new RuntimeException(sqle.getMessage());
         } finally {
             // Connection, PreparedStatement를 닫는다.
             try{
                 if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                 if ( conn != null ){ conn.close(); conn=null;    }
             }catch(Exception e){
                 throw new RuntimeException(e.getMessage());
             }
         }


    }


    public boolean duplicateIdCheck(String id)
    {
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        boolean x= false;
        
        try {
            // 荑쇰━
            StringBuffer query = new StringBuffer();
            query.append("SELECT ID FROM MEMBER WHERE ID=?");
                        
            conn = DBConnection.getConnection();
            pstm = conn.prepareStatement(query.toString());
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            
            if(rs.next()) x= true; //�빐�떦 �븘�씠�뵒 議댁옱
            
            return x;
            
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstm != null ){ pstm.close(); pstm=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end duplicateIdCheck()
	
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
			System.out.println("�븰�맖");
		}
	}
	
	  

	
	  

	

}
