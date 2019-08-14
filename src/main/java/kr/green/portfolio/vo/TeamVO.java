package kr.green.portfolio.vo;

public class TeamVO {

	private String name;
	private String league;
	private String hometown;
	private int establishment;
	private String stadium;
	private String coach;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLeague() {
		return league;
	}
	public void setLeague(String league) {
		this.league = league;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public int getEstablishment() {
		return establishment;
	}
	public void setEstablishment(int establishment) {
		this.establishment = establishment;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	@Override
	public String toString() {
		return "TeamVO [name=" + name + ", league=" + league + ", hometown=" + hometown + ", establishment="
				+ establishment + ", stadium=" + stadium + ", coach=" + coach + "]";
	}
	
	
}
