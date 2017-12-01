<!-- 
Insert into Table
 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert DB</title>
	<script language="Javascript" src="js/javascript.js"></script>
</head>
<style>
	.inputPhone {
	    width: 60px;
	    margin-right: 10px;
	    height: 20px;
	    border: solid 1px #ccc;
    	border-radius: 5px;
	}
	.inputArea{
		border: solid 1px #ccc;
    	border-radius: 5px;
	}
	.input{
		height: 20px;
	    border: solid 1px #ccc;
    	border-radius: 5px;
	}
	.selectoption{
		background: #e0e0e0b5;
	    width: 370px;
	    height: 30px;
	    border-radius: 5px;
	    margin: 10px 0px;
	}
	.submit{
		background: #72c55f !important;
	    width: 100px;
	    height: 36px;
	    border-radius: 5px;
	    border: none;
	}
	.fileinput{
		margin-left: 80px;
	}
	#clock{
	   background-image:url('');
	   background-size:cover;
	   background-position: center;
	   height: 250px; width: 250px;
	   border: 1px solid #bbb;
	   float: right;
	   width: 200px;
	   height: 200px;
	   margin-right: 61px;
	}
</style>
<body>
	<h2>hello world</h2>
	<div class="master" style="width: 550px;height: 800px;margin:auto;padding: 10px 10px;">
		<table>
			<fieldset>
			<legend>Form đăng ký học</legend>
				<form action="insert.jsp" method="get" style="margin-top:10px;">
				  	First name:<span></span>	<br />
				  	<input type="text" class="input" id="firstname" name="firstname">
				  	<input type="file" id="getval" class="fileinput" name="StudentImage" onchange="readURL()">
				  	<div id="clock"></div>
				  	Last name:<span>*</span><br />
				  	<input type="text" class="input" id="lastname" name="lastname"><br />
				  	Phone:<span></span><br />
				  	<input type="text" class="inputPhone" id="phone1" name="phone">
				  	<br />
				  	<input type="radio" name="gender" value="1" id="male" checked>Male<br>
	  				<input type="radio" name="gender" value="0" id="female">Female
					<br>
					<textarea rows="6" cols="60" name="textarea" id="textarea" class="inputArea" placeholder="Description..."></textarea>
					<br>
					<button type="submit" id="picField" onclick="check()" class="submit">Insert</button>
				</form>
			</fieldset>
		</table>
	</div>
</body>
</html>