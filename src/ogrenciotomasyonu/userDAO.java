package ogrenciotomasyonu;

import java.sql.*;

public class userDAO {
	
	public user checkLogin(String username, String password) throws SQLException,
    ClassNotFoundException {
String jdbcURL = "jdbc:mysql://127.0.0.1:3306/ogrenciotomasyonu?useLegacyDatetimeCode=false&amp;allowPublicKeyRetrieval=true&amp;serverTimezone=Turkey&amp;useSSL=false";
String dbUser = "root";
String dbPassword = "1234";

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
String sql = "SELECT * FROM login WHERE username = ? and password = ?";
PreparedStatement statement = connection.prepareStatement(sql);
statement.setString(1, username);
statement.setString(2, password);

ResultSet result = statement.executeQuery();

user user = null;

if (result.next()) {
    user = new user();
    user.setUsername(username);
}

connection.close();

return user;
}

}
