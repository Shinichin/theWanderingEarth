<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="java.sql.*"%>

<html>

<body>

<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Web";

//pubs为你的数据库的

String user="sa";

String password="123456";

Connection conn= DriverManager.getConnection(url,user,password);

Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

String sql="select * from table";

ResultSet rs=stmt.executeQuery(sql);

while(rs.next()) {%>

您的第一个字段内容为：<%=rs.getString(1)%>

您的第二个字段内容为：<%=rs.getString(2)%>

<%}%>

<%out.print("数据库操作成功，恭喜你");%>

<%rs.close();

stmt.close();

conn.close();

%>

</body>

</html>
