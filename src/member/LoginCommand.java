package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kmove.CommandController;

public class LoginCommand implements CommandController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 입력한 아이디, 비밀번호가 일치하는
		//회원정보가 DB에 존재하는지 확인한다
		//1. DB와 연결한다. - DAO 객체 생성
		MemberDAO dao = new MemberDAO();
		//2. DB에서 아이디,비번 일치회원정보를 조회한다.
		//    - DAO의 회원정보조회 메소드 호출
		MemberDTO dto = dao.login( request.getParameter("id"), 
					request.getParameter("pwd") );
		//3. 조회한 회원정보를 화면에서 사용할 수 있도록
		//   session 에 저장한다.
		try{
			if( dto==null ) {
				//아이디나 비밀번호가 일치하지 않은 경우
					response.getWriter().print("fail");
			}else {
				request.getSession().setAttribute("login_info", dto);
				response.getWriter().print("success");
			}
		}catch(Exception e) {}
	}
}
