package kr.green.portfolio.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RatingStandingsVO {

	private int num;
	private int ranking;
	private String player;
	private String team;
	private double rating;
	private int appearances;
	
}
