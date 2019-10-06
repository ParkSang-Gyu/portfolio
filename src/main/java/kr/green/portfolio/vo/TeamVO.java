package kr.green.portfolio.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TeamVO {

	private int num;
	private int teamNum;
	private String name;
	private int leagueNum;
	private String league;
	private int seasonStart;
	private String hometown;
	private int establishment;
	private String stadium;
	private String coach;
	private int ranking;
	private int played;
	private int win;
	private int draw;
	private int lose;
	private int goalFor;
	private int goalAgainst;
	private String goalDifference;
	private int points;

	
}
