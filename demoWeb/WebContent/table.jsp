<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>javascript</title>
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
				<form action="" style="margin-top:10px;">
				  	First name:<span></span>	<br />
				  	<input type="text" class="input" id="firstname">
				  	<input type="file" id="getval" class="fileinput" name="background-image" onchange="readURL()">
				  	<div id="clock"></div>
				  	Last name:<span>*</span><br />
				  	<input type="text" class="input" id="lastname"><br />
				  	Phone:<span></span><br />
				  	<input type="text" class="inputPhone" id="phone1">
				  	<input type="text" class="inputPhone" id="phone2">
				  	<input type="text" class="inputPhone" id="phone3">
				  	<br />
				  	<input type="radio" name="gender" value="male" id="red" checked>Male<br>
	  				<input type="radio" name="gender" value="female" id="blue">Female
					<br>
					<textarea rows="6" cols="60" class="inputArea" placeholder="Description..."></textarea>
					<br>
					<input type="checkbox" value="Bike">By Bike<br>
					<input type="checkbox" value="Car">By Car
					<br />
					<select class="selectoption">
					  	<option value="volvo">Volvo</option>
					  	<option value="saab">Saab</option>
					  	<option value="vw">VW</option>
					  	<option value="audi" selected>Audi</option>
					</select>
					<br>
					<button type="submit" id="picField" onclick="check()" class="submit">Submit</button>
				</form>
			</fieldset>
		</table>
	</div>
</body>
</html>