package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCUtil {
	public static Connection getConnection() {
		// oracle
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "admin";
		String pw = "aArudals147852";

		Connection con = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);

			// 2. 로딩된 Driver클래스를 이용해서 Connection요청(url, user, pwd)
			con = DriverManager.getConnection(url, user, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
	
	public static void close(Connection con, Statement st,ResultSet rs) {
		try {
			if(rs!=null) rs.close();
			if(st!=null) st.close();
			if(con!=null) con.close();
		} catch(Exception e2) {
			e2.printStackTrace();
		}
	}

}
