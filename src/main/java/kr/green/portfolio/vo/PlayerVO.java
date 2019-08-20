package kr.green.portfolio.vo;

public class PlayerVO {
	
	private int num;
	private String player;
	private String nationality;
	private int age;
	private int backNum;
	private String position;
	private String team;
	private String height;
	private String weight;
	private int appearances;
	private int minutes;
	private int goals;
	private int assists;
	private int yellowCard;
	private int redCard;
	private double psr;
	private double rating;
	private int motm;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPlayer() {
		return player;
	}
	public void setPlayer(String player) {
		this.player = player;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getBackNum() {
		return backNum;
	}
	public void setBackNum(int backNum) {
		this.backNum = backNum;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public int getAppearances() {
		return appearances;
	}
	public void setAppearances(int appearances) {
		this.appearances = appearances;
	}
	public int getMinutes() {
		return minutes;
	}
	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}
	public int getGoals() {
		return goals;
	}
	public void setGoals(int goals) {
		this.goals = goals;
	}
	public int getAssists() {
		return assists;
	}
	public void setAssists(int assists) {
		this.assists = assists;
	}
	public int getYellowCard() {
		return yellowCard;
	}
	public void setYellowCard(int yellowCard) {
		this.yellowCard = yellowCard;
	}
	public int getRedCard() {
		return redCard;
	}
	public void setRedCard(int redCard) {
		this.redCard = redCard;
	}
	public double getPsr() {
		return psr;
	}
	public void setPsr(double psr) {
		this.psr = psr;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public int getMotm() {
		return motm;
	}
	public void setMotm(int motm) {
		this.motm = motm;
	}
	@Override
	public String toString() {
		return "PlayerVO [num=" + num + ", player=" + player + ", nationality=" + nationality + ", age=" + age
				+ ", backNum=" + backNum + ", position=" + position + ", team=" + team + ", height=" + height
				+ ", weight=" + weight + ", appearances=" + appearances + ", minutes=" + minutes + ", goals=" + goals
				+ ", assists=" + assists + ", yellowCard=" + yellowCard + ", redCard=" + redCard + ", psr=" + psr
				+ ", rating=" + rating + ", motm=" + motm + ", getNum()=" + getNum() + ", getPlayer()=" + getPlayer()
				+ ", getNationality()=" + getNationality() + ", getAge()=" + getAge() + ", getBackNum()=" + getBackNum()
				+ ", getPosition()=" + getPosition() + ", getTeam()=" + getTeam() + ", getHeight()=" + getHeight()
				+ ", getWeight()=" + getWeight() + ", getAppearances()=" + getAppearances() + ", getMinutes()="
				+ getMinutes() + ", getGoals()=" + getGoals() + ", getAssists()=" + getAssists() + ", getYellowCard()="
				+ getYellowCard() + ", getRedCard()=" + getRedCard() + ", getPsr()=" + getPsr() + ", getRating()="
				+ getRating() + ", getMotm()=" + getMotm() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
