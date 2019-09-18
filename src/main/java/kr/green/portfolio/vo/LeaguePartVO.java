package kr.green.portfolio.vo;

public class LeaguePartVO {

	private int num;
	private int leagueNum;
	private String league;
	private String season;
	
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
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	@Override
	public String toString() {
		return "LeaguePartVO [num=" + num + ", leagueNum=" + leagueNum + ", league=" + league + ", season=" + season
				+ "]";
	}
	
}
