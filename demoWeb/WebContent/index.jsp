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
	<div class="menu-right">
		<div class="container-right">
			<jsp:include page="menu-left.jsp" flush="true"></jsp:include>
			<jsp:include page="header.jsp" flush="true"></jsp:include>
			<jsp:include page="banner.jsp" flush="true"></jsp:include>
			<jsp:include page="section.jsp" flush="true"></jsp:include>

			<!-- /container-right -->
		</div>
		<div class="footer" style="border-top: solid 1px #111;">
			<div class="address">
				<p style="float: left;">© Copyright 1997 VnExpress, All rights reserved.</p>
			</div>
		</div>
	</div>
</body>
</html>