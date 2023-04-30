package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    public static Connection getCon(){
        
        try{
            String url="jdbc:sqlserver://LAPTOP-96ECOHOM\\SQLEXPRESS;encrypt=false";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ebook_app","sa","songlong");
        }
        catch(Exception e){
            System.out.println("Error: "+e);
             return null;
        }
       
        
    }
    public static void main(String[] args) {
        System.out.println(getCon());
    }
}
