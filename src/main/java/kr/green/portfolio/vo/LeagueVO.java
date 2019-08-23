package kr.green.portfolio.vo;

public class LeagueVO {

	private int num;
	private String leagueName;
	private int seasonStart;
	private int seasonEnd;
	private int roundNum;
	private String date;
	private String time;
	private String status;
	private String homeTeam;
	private int homeTeamGoal;
	private int awayTeamGoal;
	private String awayTeam;
	private String stadium;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getLeagueName() {
		return leagueName;
	}
	public void setLeagueName(String leagueName) {
		this.leagueName = leagueName;
	}
	public int getSeasonStart() {
		return seasonStart;
	}
	public void setSeasonStart(int seasonStart) {
		this.seasonStart = seasonStart;
	}
	public int getSeasonEnd() {
		return seasonEnd;
	}
	public void setSeasonEnd(int seasonEnd) {
		this.seasonEnd = seasonEnd;
	}
	public int getRoundNum() {
		return roundNum;
	}
	public void setRoundNum(int roundNum) {
		this.roundNum = roundNum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getHomeTeam() {
		return homeTeam;
	}
	public void setHomeTeam(String homeTeam) {
		this.homeTeam = homeTeam;
	}
	public int getHomeTeamGoal() {
		return homeTeamGoal;
	}
	public void setHomeTeamGoal(int homeTeamGoal) {
		this.homeTeamGoal = homeTeamGoal;
	}
	public int getAwayTeamGoal() {
		return awayTeamGoal;
	}
	public void setAwayTeamGoal(int awayTeamGoal) {
		this.awayTeamGoal = awayTeamGoal;
	}
	public String getAwayTeam() {
		return awayTeam;
	}
	public void setAwayTeam(String awayTeam) {
		this.awayTeam = awayTeam;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	
	@Override
	public String toString() {
		return "LeagueVO [num=" + num + ", leagueName=" + leagueName + ", seasonStart=" + seasonStart + ", seasonEnd="
				+ seasonEnd + ", roundNum=" + roundNum + ", date=" + date + ", time=" + time + ", status=" + status
				+ ", homeTeam=" + homeTeam + ", homeTeamGoal=" + homeTeamGoal + ", awayTeamGoal=" + awayTeamGoal
				+ ", awayTeam=" + awayTeam + ", stadium=" + stadium + "]";
	}
	
	
}
