package com.web.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	private static final String URL = "jdbc:mariadb://localhost:3306/kd";
	private static final String DRIVER_NAME = "org.mariadb.jdbc.Driver";
	private static final String USER = "root";
	private static final String PASSWORD = "kd1824java";

	static {
		try {
			Class.forName(DRIVER_NAME);
			// System.out.println("나 나오면 드라이버는 잘 찾은 거");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	public static Connection getCon() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(URL, USER, PASSWORD);
			// System.out.println("나 나오면 커넥션 잘 된 거");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return con;
		// =return null;
	}

}
