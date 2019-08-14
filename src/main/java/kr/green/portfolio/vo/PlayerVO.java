package kr.green.portfolio.vo;

public class PlayerVO {
	
	private int num;
	private String name;
	private String nationality;
	private int age;
	private int backNum;
	private String position;
	private String team;
	private String height;
	private String weight;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	@Override
	public String toString() {
		return "PlayerVO [num=" + num + ", name=" + name + ", nationality=" + nationality + ", age=" + age
				+ ", backNum=" + backNum + ", position=" + position + ", team=" + team + ", height=" + height
				+ ", weight=" + weight + "]";
	}
	
	
}
