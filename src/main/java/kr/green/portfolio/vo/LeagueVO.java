package kr.green.portfolio.vo;

public class LeagueVO {

	private int num;
	private int leagueNum;
	private String league;
	private String leagueName;
	private int seasonStart;
	private int seasonEnd;
	private String season;
	private String team;
	
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
	public String getLeague() {
		return league;
	}
	public void setLeague(String league) {
		this.league = league;
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
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	@Override
	public String toString() {
		return "LeagueVO [num=" + num + ", leagueNum=" + leagueNum + ", league=" + league + ", leagueName=" + leagueName
				+ ", seasonStart=" + seasonStart + ", seasonEnd=" + seasonEnd + ", season=" + season + ", team=" + team
				+ "]";
	}
	
}
