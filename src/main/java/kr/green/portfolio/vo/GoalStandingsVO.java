package kr.green.portfolio.vo;

public class GoalStandingsVO {

	private int num;
	private int rank;
	private String player;
	private String team;
	private int goals;
	private int appearances;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getPlayer() {
		return player;
	}
	public void setPlayer(String player) {
		this.player = player;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public int getGoals() {
		return goals;
	}
	public void setGoals(int goals) {
		this.goals = goals;
	}
	public int getAppearances() {
		return appearances;
	}
	public void setAppearances(int appearances) {
		this.appearances = appearances;
	}
	@Override
	public String toString() {
		return "GoalStandingsVO [num=" + num + ", rank=" + rank + ", player=" + player + ", team=" + team + ", goals="
				+ goals + ", appearances=" + appearances + "]";
	}
	
}