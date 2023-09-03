import java.sql.Connection;
import java.sql.DriverManager;

public class Calculator {
	public static Connection getConnection() throws Exception {
		String url = "jdbc:mysql://localhost:3306/calcidb";
		String username = "root";
		String password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, username, password);

		return conn;
	}
}
