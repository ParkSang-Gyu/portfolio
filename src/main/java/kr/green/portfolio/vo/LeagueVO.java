package kr.green.portfolio.vo;

public class LeagueVO {

	private int leagueNum;
	private String league;
	private String leagueName;
	
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
	@Override
	public String toString() {
		return "LeagueVO [leagueNum=" + leagueNum + ", league=" + league + ", leagueName=" + leagueName + "]";
	}
	
	
}
