package vo;

public class Game {
	private String location_id;
	private String time;
	private String home_id;
	private String away_id;
	private String game_date;
	private String home_result;
	private String away_result;
	
	public Game(String location_id, String time, String home_id, String away_id, String game_date, String home_result,
			String away_result) {
		super();
		this.location_id = location_id;
		this.time = time;
		this.home_id = home_id;
		this.away_id = away_id;
		this.game_date = game_date;
		this.home_result = home_result;
		this.away_result = away_result;
	}
	public Game() {
		super();
	}
	public String getLocation_id() {
		return location_id;
	}
	public void setLocation_id(String location_id) {
		this.location_id = location_id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getHome_id() {
		return home_id;
	}
	public void setHome_id(String home_id) {
		this.home_id = home_id;
	}
	public String getAway_id() {
		return away_id;
	}
	public void setAway_id(String away_id) {
		this.away_id = away_id;
	}
	public String getGame_date() {
		return game_date;
	}
	public void setGame_date(String game_date) {
		this.game_date = game_date;
	}
	public String getHome_result() {
		return home_result;
	}
	public void setHome_result(String home_result) {
		this.home_result = home_result;
	}
	public String getAway_result() {
		return away_result;
	}
	public void setAway_result(String away_result) {
		this.away_result = away_result;
	}
	@Override
	public String toString() {
		return "Game [location_id=" + location_id + ", time=" + time + ", home_id=" + home_id + ", away_id=" + away_id
				+ ", game_date=" + game_date + ", home_result=" + home_result + ", away_result=" + away_result + "]";
	}

	
}