package org.o7planning.tutorial.jdbc.basic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.o7planning.tutorial.jdbc.ConnectionUtils;

public class ScrollableResultSetExample {

    public static void main(String[] args) throws ClassNotFoundException,
            SQLException {

        // Get a Connection
        Connection connection = ConnectionUtils.getMyConnection();


        // Create a Statement object
        // can be srolled, but not sensitive to changes under DB.
        // ResultSet is readonly (Cannot update)
        Statement statement = connection.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String sql = "Select Emp_Id, Emp_No, Emp_Name from Employee";


        // Execute statement, return ResultSet.
        ResultSet rs = statement.executeQuery(sql);

        
        // Jump the cursor to last record.
        boolean last = rs.last();
        
        System.out.println("last : "+ last);
        
        
        if(last) {
            // Print out data of last record
            System.out.println("EmpId:" + rs.getInt(1));
            System.out.println("EmpNo:" + rs.getString(2));
            System.out.println("EmpName:" + rs.getString(3));
        }
        
        
        System.out.println("--------------------");
        
        // Move cursor to previous record
        boolean previous =rs.previous();
        System.out.println("Previous 1: "+ previous);
        
        // Move cursor to previous record
        previous =rs.previous();
        System.out.println("Previous 2: "+ previous);       
        
        // Fetch in the ResultSet
        while (rs.next()) {
            // Get value of column 2
            String empNo = rs.getString(2);

            // Then get the value of column 1.
            int empId = rs.getInt(1);
            
            String empName = rs.getString("Emp_Name");
            
            System.out.println("--------------------");
            System.out.println("EmpId:" + empId);
            System.out.println("EmpNo:" + empNo);
            System.out.println("EmpName:" + empName);
        }

        // Close connection.
        connection.close();
    }

}