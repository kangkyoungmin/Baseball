package vo;

public class Count {
	private int victory;
	private int draw;
	private int defeat;
	private int rank;
	private String team;
	private double vic_st;
	
	public Count(int victory, int draw, int defeat, int rank, String team, double vic_st) {
		super();
		this.victory = victory;
		this.draw = draw;
		this.defeat = defeat;
		this.rank = rank;
		this.team = team;
		this.setVic_st(vic_st);
	}
	public Count() {
		super();
	}
	public int getVictory() {
		return victory;
	}
	public void setVictory(int victory) {
		this.victory = victory;
	}
	public int getDraw() {
		return draw;
	}
	public void setDraw(int draw) {
		this.draw = draw;
	}
	public int getDefeat() {
		return defeat;
	}
	public void setDefeat(int defeat) {
		this.defeat = defeat;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(int team) {
		if(team==1) this.team="NC";
		else if(team==2) this.team="LG";
		else if(team==3) this.team="KIA";
		else if(team==4) this.team="롯데";
		else if(team==5) this.team="키움";		
		else if(team==6) this.team="한화";
		else if(team==7) this.team="SK";
		else if(team==8) this.team="두산";
		else if(team==9) this.team="삼성";
		else if(team==10) this.team="KT";
	}
	public double getVic_st() {
		return vic_st;
	}
	public void setVic_st(double vic_st) {
		this.vic_st = vic_st;
	}

}
