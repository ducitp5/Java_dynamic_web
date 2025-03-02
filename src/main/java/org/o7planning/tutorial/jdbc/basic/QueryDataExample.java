package org.o7planning.tutorial.jdbc.basic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.o7planning.tutorial.jdbc.ConnectionUtils;

public class QueryDataExample {

    public static void main(String[] args) throws ClassNotFoundException,
            SQLException {

        // Get Connection
        Connection connection = ConnectionUtils.getMyConnection();

        // Create statement
        Statement statement = connection.createStatement();

        String sql = "Select Emp_Id, Emp_No, Emp_Name from Employee";

        // Execute SQL statement returns a ResultSet object.
        ResultSet rs = statement.executeQuery(sql);

        // Fetch on the ResultSet        
        // Move the cursor to the next record.
        while (rs.next()) {
            int empId = rs.getInt(1);
            String empNo = rs.getString(2);
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