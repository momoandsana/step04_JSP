import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.HttpRetryException;

@WebServlet(name="SessionTestServlet", urlPatterns = "/sessionServlet",loadOnStartup=1)
/*
루트노드(webapp) 기준으로, sessionMethod.jsp 에서 sessionServlet 이라는 이름으로 이동
프론트에서 요청을 ${pageContext.request.contextPath}/sessionServlet 이렇게 하기 때문에 서블릿의 실제 위치 경로와는 상관이 없다

 */
public class SessionTestServlet extends HttpServlet {
    public SessionTestServlet() {
        System.out.println("SessionTestServlet.SessionTestServlet");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet 요청됨");

        //session 정보를 조회해보자->HttpSession 먼저 얻은 후에 조회
        HttpSession session = request.getSession();
        String name=(String)session.getAttribute("name");// 그냥 바로 꺼내오면 object 객체임
        String id=(String)session.getAttribute("id");
        String[] hobbies=(String[])session.getAttribute("hobbies");

        System.out.println("name = " + name);
        System.out.println("id = " + id);
        System.out.println("hobbies = " + hobbies);

        //뷰쪽으로 이동
        response.sendRedirect("session/sessionOk.jsp");

    }
}
