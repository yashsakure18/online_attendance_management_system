<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<body>

<h1>UPDATED ATTENDANCE</h1>
<table border="1">
<tr>
<td>STUDENT_ID</td>
<td>STUDENT_NAME</td>
<td>STUDENT_COURSE</td>
<td>STUDENT_ATTENDANCE</td>

</tr>

<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","yash");
Statement statement=con.createStatement();
String sql ="select * from ATTENDANCE";
ResultSet resultSet = statement.executeQuery(sql);
while(resultSet.next()){


%>
<tr>
<td><%=resultSet.getString("STUDENT_ID") %></td>
<td><%=resultSet.getString("STUDENT_NAME") %></td>
<td><%=resultSet.getString("STUDENT_COURSE") %></td>
<td><%=resultSet.getString("STUDENT_ATTENDANCE") %></td>


</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>