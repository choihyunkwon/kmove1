package com.kmove;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import jsp.member.model.MemberBean;
import jsp.member.model.MemberDAO;
 
/** 
 *  ȸ�������� ó���ϴ� Action Ŭ����<br>
 *  JoinForm.jsp���� �Ѱܹ��� ������ �̿��Ͽ�
 *  ȸ�������� ó���Ѵ�.
 */
public class MemberJoinAction implements Action
{
 
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        request.setCharacterEncoding("UTP-8"); // ���ڵ�
        
        ActionForward forward = new ActionForward();
        
        MemberDAO dao = MemberDAO.getInstance();
        
        // �Էµ� ������ �ڹٺ� �����Ѵ�.
        MemberBean member = new MemberBean();
        member.setId(request.getParameter("id"));
        member.setPassword(request.getParameter("password"));
        member.setName(request.getParameter("name"));
        member.setGender(request.getParameter("gender"));;

        
        // ȸ������ ����
        dao.insertMember(member);
        
        // ���Լ���
        forward.setRedirect(true);
           forward.setNextPath("Result.do");
        
           // ���Լ��� �޽����� ���ǿ� ��´�.
           request.getSession().setAttribute("msg", "1");
           
        return forward;
    }
}

