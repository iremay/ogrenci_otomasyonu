package ogrencibilgisistemi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ogrenciDAO {
	
	private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
    public ogrenciDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }
     
    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(
                                        jdbcURL, jdbcUsername, jdbcPassword);
        }
    }
     
    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }
     
    public boolean ogrenciekle(ogrenci ogrenci) throws SQLException {
        String sql = "INSERT INTO ogrenci (ad, soyad,bolum) VALUES (?, ?, ?)";
        connect();
         
        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, ogrenci.getAd());
        statement.setString(2, ogrenci.getSoyad());
        statement.setString(3, ogrenci.getBolum());
         
        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }
     
    public List<ogrenci> ogrencilistesi() throws SQLException {
        List<ogrenci> ogrencilistesi= new ArrayList<>();
         
        String sql = "SELECT * FROM ogrenci";
         
        connect();
         
        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
         
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String ad = resultSet.getString("ad");
            String soyad= resultSet.getString("soyad");
            String bolum = resultSet.getString("bolum");
             
            ogrenci ogrenci = new ogrenci(id, ad, soyad, bolum);
            ogrencilistesi.add(ogrenci);
        }
         
        resultSet.close();
        statement.close();
         
        disconnect();
         
        return ogrencilistesi;
    }
     
    public boolean ogrencisil(ogrenci ogrenci) throws SQLException {
        String sql = "DELETE FROM ogrenci where id= ?";
         
        connect();
         
        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, ogrenci.getId());
         
        boolean rowDeleted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowDeleted;     
    }
     
    public boolean ogrenciduzenle(ogrenci ogrenci) throws SQLException {
        String sql = "UPDATE ogrenci SET ad = ?, soyad = ?, bolum = ?";
        sql += " WHERE id = ?";
        connect();
         
        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, ogrenci.getAd());
        statement.setString(2, ogrenci.getSoyad());
        statement.setString(3, ogrenci.getBolum());
        statement.setInt(4, ogrenci.getId());
         
        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowUpdated;     
    }
     
    public ogrenci ogrencigetir(int id) throws SQLException {
    	ogrenci ogrenci = null;
        String sql = "SELECT * FROM ogrenci WHERE id = ?";
         
        connect();
         
        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setInt(1, id);
         
        ResultSet resultSet = statement.executeQuery();
         
        if (resultSet.next()) {
            String ad = resultSet.getString("ad");
            String soyad = resultSet.getString("soyad");
            String bolum = resultSet.getString("bolum");
             
            ogrenci = new ogrenci(id, ad, soyad, bolum);
        }
         
        resultSet.close();
        statement.close();
         
        return ogrenci;
    }
}
