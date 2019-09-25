package kr.green.portfolio.vo;

public class TeamVO {

	private int num;
	private int teamNum;
	private String name;
	private int leagueNum;
	private String league;
	private int seasonStart;
	private String hometown;
	private int establishment;
	private String stadium;
	private String coach;
	private int ranking;
	private int played;
	private int win;
	private int draw;
	private int lose;
	private int goalFor;
	private int goalAgainst;
	private String goalDifference;
	private int points;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getTeamNum() {
		return teamNum;
	}
	public void setTeamNum(int teamNum) {
		this.teamNum = teamNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLeagueNum() {
		return leagueNum;
	}
	public void setLeagueNum(int leagueNum) {
		this.leagueNum = leagueNum;
	}
	public String getLeague() {
		return league;
	}
	public void setLeague(String league) {
		this.league = league;
	}
	public int getSeasonStart() {
		return seasonStart;
	}
	public void setSeasonStart(int seasonStart) {
		this.seasonStart = seasonStart;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public int getEstablishment() {
		return establishment;
	}
	public void setEstablishment(int establishment) {
		this.establishment = establishment;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public int getPlayed() {
		return played;
	}
	public void setPlayed(int played) {
		this.played = played;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getDraw() {
		return draw;
	}
	public void setDraw(int draw) {
		this.draw = draw;
	}
	public int getLose() {
		return lose;
	}
	public void setLose(int lose) {
		this.lose = lose;
	}
	public int getGoalFor() {
		return goalFor;
	}
	public void setGoalFor(int goalFor) {
		this.goalFor = goalFor;
	}
	public int getGoalAgainst() {
		return goalAgainst;
	}
	public void setGoalAgainst(int goalAgainst) {
		this.goalAgainst = goalAgainst;
	}
	public String getGoalDifference() {
		return goalDifference;
	}
	public void setGoalDifference(String goalDifference) {
		this.goalDifference = goalDifference;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	@Override
	public String toString() {
		return "TeamVO [num=" + num + ", teamNum=" + teamNum + ", name=" + name + ", leagueNum=" + leagueNum
				+ ", league=" + league + ", seasonStart=" + seasonStart + ", hometown=" + hometown + ", establishment="
				+ establishment + ", stadium=" + stadium + ", coach=" + coach + ", ranking=" + ranking + ", played=" + played
				+ ", win=" + win + ", draw=" + draw + ", lose=" + lose + ", goalFor=" + goalFor + ", goalAgainst="
				+ goalAgainst + ", goalDifference=" + goalDifference + ", points=" + points + "]";
	}
	
	
}
