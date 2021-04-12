package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GameDAO;
import vo.Count;
import vo.Game;


public class GameServiceImpl implements GameService{
	GameDAO dao;

	public GameDAO getDao() {
		return dao;
	}

	public void setDao(GameDAO dao) {
		this.dao = dao;
	}

	public GameServiceImpl() {
		super();
	}

	public GameServiceImpl(GameDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<Game> gameList(String yy,String mm,String dd) {
		return dao.getGameSchedule(yy, mm, dd);
	}


	@Override
	public List<Count> gameCount(int rank) {
		return dao.getCount(rank);
	}
	
}
