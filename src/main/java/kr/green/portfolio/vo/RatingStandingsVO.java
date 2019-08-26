package kr.green.portfolio.vo;

public class RatingStandingsVO {

	private int num;
	private int rank;
	private String player;
	private String team;
	private double rating;
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
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public int getAppearances() {
		return appearances;
	}
	public void setAppearances(int appearances) {
		this.appearances = appearances;
	}
	@Override
	public String toString() {
		return "GoalStandingsVO [num=" + num + ", rank=" + rank + ", player=" + player + ", team=" + team + ", rating="
				+ rating + ", appearances=" + appearances + "]";
	}
	
}
