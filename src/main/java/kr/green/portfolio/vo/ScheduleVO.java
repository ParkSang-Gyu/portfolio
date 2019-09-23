package kr.green.portfolio.vo;

public class ScheduleVO {

	private int num;
	private int leagueNum;
	private int seasonStart;
	private int roundNum;
	private String date;
	private String time;
	private String status;
	private String homeTeam;
	private int homeTeamGoal;
	private String score;
	private int awayTeamGoal;
	private String awayTeam;
	private String stadium;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getLeagueNum() {
		return leagueNum;
	}
	public void setLeagueNum(int leagueNum) {
		this.leagueNum = leagueNum;
	}
	public int getSeasonStart() {
		return seasonStart;
	}
	public void setSeasonStart(int seasonStart) {
		this.seasonStart = seasonStart;
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
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
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
		return "ScheduleVO [num=" + num + ", leagueNum=" + leagueNum + ", seasonStart=" + seasonStart + ", roundNum="
				+ roundNum + ", date=" + date + ", time=" + time + ", status=" + status + ", homeTeam=" + homeTeam
				+ ", homeTeamGoal=" + homeTeamGoal + ", score=" + score + ", awayTeamGoal=" + awayTeamGoal
				+ ", awayTeam=" + awayTeam + ", stadium=" + stadium + "]";
	}
	
	
	
}
