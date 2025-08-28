package vn.iotstar.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	 private final String serverName = "Asus\\SQLEXPRESS";
	    private final String dbName = "THUC_HANH";
	    private final String portNumber = "1433";
	    private final String instance = "";
	    private final String userID = "sa";
	    private final String password = "123456";

	    public Connection getConnection() throws Exception {
	        String url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber + ";encrypt=true;trustServerCertificate=true;databaseName=" + dbName;

	        // Kiểm tra nếu instance là chuỗi trống thì cập nhật URL kết nối
	        if (instance == null || instance.trim().isEmpty()) {
	            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
	        }

	        // Nạp JDBC Driver cho SQL Server
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

	        // Trả về kết nối
	        return DriverManager.getConnection(url, userID, password);
	    }

	    public static void main(String[] args) {
	        try {
	            System.out.println(new DBConnection().getConnection());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
