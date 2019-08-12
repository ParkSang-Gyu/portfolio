package kr.green.portfolio.vo;

public class PremierLeagueVO {

	private int num;
	private int round;
	private String time;
	private String status;
	private String hometeam;
	private String result;
	private String awayteam;
	private String stadium;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getRound() {
		return round;
	}
	public void setRound(int round) {
		this.round = round;
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
	public String getHometeam() {
		return hometeam;
	}
	public void setHometeam(String hometeam) {
		this.hometeam = hometeam;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getAwayteam() {
		return awayteam;
	}
	public void setAwayteam(String awayteam) {
		this.awayteam = awayteam;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	
	@Override
	public String toString() {
		return "PremierLeagueVO [num=" + num + ", round=" + round + ", time=" + time + ", status=" + status
				+ ", hometeam=" + hometeam + ", result=" + result + ", awayteam=" + awayteam + ", stadium=" + stadium
				+ "]";
	}
	
	
}
