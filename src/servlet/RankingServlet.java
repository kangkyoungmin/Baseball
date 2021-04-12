package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
import vo.Count;
import vo.Game;

/**
 * Servlet implementation class ScheduleServlet
 */
@WebServlet("/ranking.do")
public class RankingServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(req, resp);
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=UTF-8");
			int gameCount=0;
			String view = "/team_ranking.jsp";
			List<Count> list[]=new ArrayList[10];
		
		try {
			PrintWriter out = response.getWriter();
			
			GameDAO dao = new GameDAO();
			GameService service = new GameServiceImpl(dao);
			
			for(int i=1;i<=10;i++) {
				list[i-1] = service.gameCount(i);	
			}	
			request.setAttribute("list", list);
			getServletContext().getRequestDispatcher(view).forward(request, response);
		}catch(

	Exception e)
	{
		e.printStackTrace();
	}

}

}
