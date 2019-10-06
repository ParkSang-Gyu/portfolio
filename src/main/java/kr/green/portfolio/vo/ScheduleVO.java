package kr.green.portfolio.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
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
	
	
}
