package member;
 
import java.io.PrintWriter;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.kmove.*;

 
public class MemberIdCheckAction implements Action
{
    @Override
    public ActionForward execute(HttpServletRequest request,
            HttpServletResponse response)throws Exception  {
 
    	String id = request.getParameter("id");
        MemberDAO dao = MemberDAO.getInstance();
        
        boolean result = dao.duplicateIdCheck(id);
        
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
 
        if(result)    out.println("0"); // ���̵� �ߺ�
        else        out.println("1");
        
        out.close();
        
        return null;


    }
}
