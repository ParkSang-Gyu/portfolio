package kr.green.portfolio.vo;

public class LaLigaVO {

	private int Num;
	private String time;
	private String status;
	private String hometeam;
	private String result;
	private String awayteam;
	private String stadium;
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
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
		return "PrimierLeagueVO [Num=" + Num + ", time=" + time + ", status=" + status + ", hometeam=" + hometeam
				+ ", result=" + result + ", awayteam=" + awayteam + ", stadium=" + stadium + "]";
	}
	
	
	
}
