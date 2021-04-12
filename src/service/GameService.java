package service;

import java.util.List;

import vo.Count;
import vo.Game;

public interface GameService {
	public List<Game> gameList(String yy,String mm,String dd);
	public List<Count> gameCount(int rank);
}

