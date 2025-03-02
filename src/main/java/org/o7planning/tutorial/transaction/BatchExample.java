package org.o7planning.tutorial.transaction;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.o7planning.tutorial.jdbc.ConnectionUtils;

public class BatchExample {

    public static void main(String[] args) throws SQLException,
            ClassNotFoundException {

        Connection conn = ConnectionUtils.getMyConnection();

        try {
            // Create statement object
            Statement stmt = conn.createStatement();

            // Set auto-commit to false
            conn.setAutoCommit(false);

            // Create SQL statement to insert into Employee table.
            String sql1 = "Update Employee emp set emp.Salary = emp.Salary + 100 "
                    + " where emp.Dept_Id = 10 ";
            
            // Add above SQL statement in the batch.
            stmt.addBatch(sql1);

            // Create one more SQL statement
            String sql2 = "Update Employee emp set emp.Salary = emp.Salary + 20 "
                    + " where emp.Dept_Id = 20 ";
            
            // Add above SQL statement in the batch.
            stmt.addBatch(sql2);

            // Create one more SQL statement
            String sql3 = "Update Employee emp set emp.Salary = emp.Salary + 30 "
                    + " where emp.Dept_Id = 30 ";
            
            // Add above SQL statement in the batch.
            stmt.addBatch(sql3);

            // Create an int[] to hold returned values
            int[] counts = stmt.executeBatch();

            System.out.println("Sql1 count = " + counts[0]);
            System.out.println("Sql2 count = " + counts[1]);
            System.out.println("Sql3 count = " + counts[2]);

            // Explicitly commit statements to apply changes
              conn.commit();
        } catch (Exception e) {
            e.printStackTrace();
            conn.rollback();
        }
    }

}