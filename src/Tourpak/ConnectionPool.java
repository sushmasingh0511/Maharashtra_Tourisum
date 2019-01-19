package Tourpak;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintStream;
import java.sql.*;
import javax.servlet.Servlet;
import javax.servlet.http.HttpServlet;

public class ConnectionPool extends HttpServlet
    implements Servlet
{

    public ConnectionPool()
    {
    }
    private static Connection con = null;
    public static Connection getConnection()
    { 
        try
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/maharashtra","root","Password@123");
            if(con != null)
                System.out.println("Connection Pool Database Connection Success");
        }
        catch(ClassNotFoundException classnotfoundexception) { }
        catch(SQLException sqlexception) { }
       return con;
    }

   

}
