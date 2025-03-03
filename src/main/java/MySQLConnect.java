import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLConnect {
	
    public static void main(String[] args) {
     
    	run1();
    }
    
    public static void run1() {
    	
    	 String url = "jdbc:mysql://localhost:3306/test"; // Change port and DB name accordingly
         String username = "root";
         String password = ""; // Your MySQL password
         
         try {
             // Load MySQL driver (optional for JDBC 4.0+)
             Class.forName("com.mysql.cj.jdbc.Driver");
             
             // Connect to database
             Connection conn = DriverManager.getConnection(url, username, password);
             System.out.println("Connected to the database!");

             // Execute a query
             String sql = "SELECT * FROM users";
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery();
             
             while (rs.next()) {
                 System.out.println("ID: " + rs.getInt("id"));
                 System.out.println("Name: " + rs.getString("name"));
                 System.out.println("Email: " + rs.getString("email"));
                 System.out.println("--------------------------");
             }
             
             // Close connections
             rs.close();
             stmt.close();
             conn.close();
         } catch (Exception e) {
             e.printStackTrace();
         }	
    }

    public static void run2() {
    	
    	String url = "jdbc:mysql://localhost:3306/test?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC";
        String username = "root"; // Username MySQL
        String password = "";     // Password (để trống nếu không có)

        try {
            // Kết nối đến MySQL
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("Kết nối thành công!");

            // Tạo truy vấn
            String sql = "SELECT * FROM users";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            // Lặp qua kết quả
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id"));
                System.out.println("Name: " + rs.getString("name"));
            }

            // Đóng kết nối
            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException e) {
            System.out.println("Kết nối thất bại!");
            e.printStackTrace();
        }
    }
}