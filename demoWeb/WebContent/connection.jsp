<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML CMC Soft</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<!-- Connection - GetData -->
	<%
		Connection connect = null;
		Statement s = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connect = DriverManager
					.getConnection(""
							+ "jdbc:sqlserver://localhost:1433;databaseName=SDP1;user=baonv;password=1234$");
			s = connect.createStatement();
			String sql = "SELECT * FROM  DEPARTMENT";
			ResultSet rec = s.executeQuery(sql);
	%>
	<table width="600" border="1" style="float: left;">
		<tr>
			<th width="91">
				<div align="center">DeptNo</div>
			</th>
			<th width="98">
				<div align="center">DeptName</div>
			</th>
			<th width="198">
				<div align="center">Note</div>
			</th>
		</tr>
		<%
			while ((rec != null) && (rec.next())) {
		%>
		<tr>
			<td><div align="center"><%=rec.getInt("DeptNo")%></div></td>
			<td><%=rec.getString("DeptName")%></td>
			<td><%=rec.getString("Note")%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}

		try {
			if (s != null) {
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
	
	<%-- use jstl tag to connect and retrieve data --%>
	<sql:setDataSource var="snapshot"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SDP1" user="baonv" password="1234$" />
	<%-- insert --%>
	<sql:update dataSource="${snapshot}" var="result">
	INSERT INTO DEPARTMENT (DeptName,Note) VALUES ('Dep 6', 'Lapnv Test');
	</sql:update>

	<%-- delete --%>

	<%-- <c:set var="firstName" value="Ha" />
	<sql:update dataSource="${snapshot}" var="count">
	  DELETE FROM Employees WHERE FirstName = ?
	  <sql:param value="${firstName}" />
	</sql:update> --%>

	<%-- update --%>
	<c:set var="DeptName" value="Dep 5" />
	<sql:update dataSource="${snapshot}" var="count">
 	 UPDATE DEPARTMENT SET DeptName = 'test Update' where DeptName =?
  	<sql:param value="${DeptName}" />
	</sql:update>

	<%-- query - show--%>
	<sql:query dataSource="${snapshot}" var="result">
			SELECT * from DEPARTMENT;
	</sql:query>
	<table width="600" border="1"
		style="overflow: auto; margin-left: 620px;">
		<tr>
			<th width="91">
				<div align="center">DeptNo</div>
			</th>
			<th width="98">
				<div align="center">DeptName</div>
			</th>
			<th width="198">
				<div align="center">Note</div>
			</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.DeptNo}" /></td>
				<td><c:out value="${row.DeptName}" /></td>
				<td><c:out value="${row.Note}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>