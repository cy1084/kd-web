package com.web.vo;

public class HumanVO {
	private int age;
	private String name;
	private String addr; // 모든 멤버 변수의 접근 제어자는 private

	public void setAge(int age) { // 값을 세팅함
		this.age = age;
	}

	public int getAge() { // 값을 가져옴
		return age;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddr() {
		return addr;
	}
 
	@Override
	public String toString() {
		return "name="+name+", age"+age+", addr="+addr;
	}
}

class Execute {
	public static void main(String[] args) {
		HumanVO human = new HumanVO(); // -> human이 HumanVO를 바라보기 하지만 각 요소 age,name,addr을 바라보지는 못함(private)
		human.setAge(10);
		System.out.println(human.getAge());
		human.setName("황채영");
		System.out.println(human.getName());
		human.setAddr("서울시");
		System.out.println(human.getAddr());
	}
}
