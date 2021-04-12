package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.google.gson.Gson;

import dao.GameDAO;
import service.GameService;
import service.GameServiceImpl;
import vo.Game;

/**
 * Servlet implementation class ScheduleServlet
 */
@WebServlet("/Schedule.do")
public class ScheduleServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(req,resp);
	}	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(req,resp);
	}
	protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=UTF-8");
			String jsonInfo=request.getParameter("jsonInfo");
		
		try {
			JSONParser jsonParser=new JSONParser();
			JSONObject jsonObject=(JSONObject) jsonParser.parse(jsonInfo);
			PrintWriter out = response.getWriter();
			String yy=(String) jsonObject.get("year");
			String mm=(String) jsonObject.get("month");
			String dd=(String) jsonObject.get("day");
			System.out.printf(yy,mm,dd);
			
			GameDAO dao = new GameDAO();
			GameService service = new GameServiceImpl(dao);
	
			List<Game> list = service.gameList(yy, mm, dd);
			
			response.setContentType("application/json");
			String gson=new Gson().toJson(list);
			response.getWriter().write(gson);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
//		String view = "/main.jsp";
//		
//		getServletContext().getRequestDispatcher(view).forward(request, response);
	
		
	}
          
			

}
