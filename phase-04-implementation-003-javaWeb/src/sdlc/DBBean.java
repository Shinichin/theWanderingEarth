package sdlc;

import java.sql.*;

public class DBBean {
	String driverStr = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String connStr = "jdbc:sqlserver://localhost:1433; DatabaseName=Web";
	String dbusername = "sa";
	String dbpassword = "123456";
	Connection conn = null;
	Statement stmt = null;
    static void main() {
    	
    }
	public DBBean()
    {
        try
        {
            Class.forName(driverStr);
            conn = DriverManager.getConnection(connStr, dbusername, dbpassword);
            stmt = conn.createStatement();
    		//执行sql语句并返回结果
    		ResultSet rs=stmt.executeQuery("select id,password");
    		//处理结果
    		while(rs.next()){
    			System.out.print(" "+rs.getObject("id"));
    			System.out.print(" "+rs.getObject("password"));    
    			System.out.println(" ");
    		}	
    		//关闭Connectio n
    		rs.close();
    		stmt.close();
         }catch (Exception e){
        	
         }
    }
}
