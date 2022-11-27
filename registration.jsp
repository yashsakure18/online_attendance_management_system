<%@page import = "java.sql.*"%>
<%

String Student_ID=request.getParameter("ID");
String Student_Name=request.getParameter("Name");
String password=request.getParameter("Password");
String YEAR_OF_STUDIES="2022";
String STUDENT_COURSE="BTECH";
String STUDENT_PERFORMANCE="EXCELLENT";
String STUDENT_ATTENDANCE="95";


try{    
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","yash");  
Statement stmt=con.createStatement();  
String sql = "insert into student values('"+Student_ID+"','"+Student_Name+"','"+password+"','"+YEAR_OF_STUDIES+"','"+STUDENT_COURSE+"','"+STUDENT_PERFORMANCE+"','"+STUDENT_ATTENDANCE+"')";
stmt.executeUpdate(sql);
out.print("<html><body bgcolor='sky blue'>");
out.print("<H1>STUDENT ATTENDANCE MANAGEMENT SYSTEM</H1>");
out.print("<h2>Record inserted sucessfully</h2>");
%>
<a href="index.html">login here</a>

<%
con.close();  
 }catch(Exception e){out.print(e);}  

%>