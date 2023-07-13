package com.web.common;

public class ExceptionTest {
	private static final String URL="jdbc:mariadb://localhost:3306/kd";
	private static final String DRIVER_NAME="org.mariadb.jdbc.Driver";
	private static final String USER="root";
	private static final String PASSWORD="kd1824java";
	
	static {
		//Class.forName(DRIVER_NAME);
	}
	public static int changeStringToInt(String str) throws Exception {
		try {
			return Integer.parseInt(str);
		}catch(Exception e) {
			throw new Exception("숫자 쓰라고!!");
		}
	}
	public static void main(String[] args) throws Exception {
		
		//int num=changeStringToInt("123");	//정상 동작
		
		
		//int num=changeStringToInt("onetwo"); //try catch 안하면 -> 프로그램 정상 종료x
		
		try {
			int num=changeStringToInt("onetwo");
			System.out.println(num);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("프로그램이 종료되었습니다.");
	}

}
