import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.HttpRetryException;
import java.util.Arrays;
import java.util.List;

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
        HttpSession session = request.getSession(); // 어느 스코프에서 요청하든 getSession 은 같은 세션을 반환한다
        String name=(String)session.getAttribute("name");// 그냥 바로 꺼내오면 object 객체임
        String id=(String)session.getAttribute("id");
        String[] hobbies=(String[])session.getAttribute("hobbies");

        System.out.println("name = " + name);
        System.out.println("id = " + id);
        System.out.println("hobbies = " + hobbies);

        //service 를 호출하고 그 결과를 받아서 뷰쪽으로 이동하고 싶다
        List<String> menus = Arrays.asList("짬뽕", "짜장", "탕수육", "깐풍기");

        //menu를 request scope에 저장한다
        request.setAttribute("menus", menus);

        //ServletContext 영역에 저장된 정보 조회해보자
        ServletContext application = request.getServletContext(); // 전체에 저장
        System.out.println("주소 : "+application.getAttribute("addr"));
        System.out.println("메시지 : "+application.getAttribute("message"));



        /*
        뷰에서 사용->정보를 전달하기 위해서는 리다이렉트가 아닌 forward 를 사용해야 한다         */

        //뷰쪽으로 이동
//        response.sendRedirect("session/sessionOk.jsp");
//        response.sendRedirect(request.getContextPath() + "/session/sessionOk.jsp");
//        클라이언트가 해당 주소로 다시 요청하라고 하기 때문에 contextPath 를 사용한다

        //request 저장된 정보가 유지되기 위해서는 forward 방식 이동
        request
                .getRequestDispatcher("/session/sessionOk.jsp")
                .forward(request,response);
        // 서버 안에서 처리하는 포워드이기 때문에 contextPath 가 아니라 webapp 기준으로 주소 알려주면 된다

        /*
        리다이렉션은 response 로 클라이언트에게 응답하고
        포워딩은 request 를 서버 내부의 다른 코드로 보낸다

        포워딩, 리다이렉션 우
        서블릿->서블릿 url 패턴 주소
        서블릿->jsp webapp 기준 주소
         */


    }
}
