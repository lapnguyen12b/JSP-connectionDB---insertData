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
	<%
		String firstname = request.getParameter("firstname");
	   	String lastname = request.getParameter("lastname");
	   	String gender = request.getParameter("gender");
	   	String phone = request.getParameter("phone");
	   	String image = request.getParameter("StudentImage");
	   
		Connection connect = null;
		PreparedStatement prs = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connect = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SDP1;user=baonv;password=1234$");
			String sql = "INSERT INTO Student(FirstName,LastName,Gender,Phone,StudentImage) VALUES(?,?,?,?,?)";
			prs = connect.prepareStatement(sql);
			prs.setString(1, firstname);
			  prs.setString(2, lastname);
			  prs.setString(3, gender);
			  prs.setString(4,phone);
			  prs.setString(5,image);
              prs.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}

		try {
			if (prs != null) {
				prs.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}finally {
            // close all the connections.
            prs.close();
            connect.close();
	}
	%>
	<sql:setDataSource var="snapshot"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SDP1" user="baonv" password="1234$" />
	<sql:query dataSource="${snapshot}" var="result">
			SELECT * from Student;
	</sql:query>
	<table width="600" border="1" style="overflow: auto; margin-left: 620px;">
		<tr>
			<th width="91">
				<div align="center">First Name</div>
			</th>
			<th width="98">
				<div align="center">Last Name</div>
			</th>
			<th width="198">
				<div align="center">Gender</div>
			</th>
			<th width="198">
				<div align="center">Phone</div>
			</th>
			<th width="198">
				<div align="center">Image</div>
			</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.FirstName}" /></td>
				<td><c:out value="${row.LastName}" /></td>
				<td><c:out value="${row.Gender}" /></td>
				<td><c:out value="${row.Phone}" /></td>
				<td><c:out value="${row.StudentImage}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>