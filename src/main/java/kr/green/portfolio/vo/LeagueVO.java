package kr.green.portfolio.vo;

public class LeagueVO {

	private int leagueNum;
	private String leagueNation;
	private String leagueName;
	private int seasonStart;
	private int seasonEnd;
	public int getLeagueNum() {
		return leagueNum;
	}
	public void setLeagueNum(int leagueNum) {
		this.leagueNum = leagueNum;
	}
	public String getLeagueNation() {
		return leagueNation;
	}
	public void setLeagueNation(String leagueNation) {
		this.leagueNation = leagueNation;
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
	@Override
	public String toString() {
		return "LeagueVO [leagueNum=" + leagueNum + ", leagueNation=" + leagueNation + ", leagueName=" + leagueName
				+ ", seasonStart=" + seasonStart + ", seasonEnd=" + seasonEnd + "]";
	}
	
	
}
