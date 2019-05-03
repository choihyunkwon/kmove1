package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kmove.CommandController;

public class MemberCommand implements CommandController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//ȭ�鿡�� �Է��� ������ DB�� �����Ѵ�.
		//1. ȭ�鿡�� �Է��� ������ ���� - DTO
		MemberDTO dto = new MemberDTO();
		dto.setName( request.getParameter("name") );
		dto.setUserid( request.getParameter("userid") );
		dto.setUserpwd( request.getParameter("userpwd") );

		
		//2. DB ���� - DAO
		MemberDAO dao = new MemberDAO();
		//3. ����ó�� - DAO�� �޼ҵ�ȣ��
		String msg = "<script type='text/javascript'>";
		if( dao.join(dto)==1 ) {
			//�ε���ȭ������ �����Ѵ�.
			msg += "alert('회원가입을 축하합니다^^'); location='index'";
		}else {
			msg += "alert('회원가입을 실패했습니다 ㅠㅠ'); history.go(-1)";
		}
		msg += "</script>";
		try {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().print(msg);
		}catch(Exception e) {}
	}

}
