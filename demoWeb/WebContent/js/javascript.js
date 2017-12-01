
function check(){
	fname = document.getElementById("firstname").value;
	lname = document.getElementById("lastname").value;
	phonex = document.getElementById("phone1").value;
	phoney = document.getElementById("phone2").value;
	phonez = document.getElementById("phone3").value;
	if ((fname % 2 ) == 0 || (fname % 2 ) == 1 ) {
		alert("erros ! FirstName is not Number :)");
	}else if((lname % 2 ) == 0 || (lname % 2 ) == 1 ){
		alert("erros ! LastName is not Number :)");
	}else if(phonex > 99 || phonex < 0 || phonex ==""){
		alert("erros ! Phone 1 . Two number ! :)");
	}else{
		alert("success !!");
	}
}
//document.getElementById('getval').addEventListener('change', readURL, true);
// Add file image
function readURL(){
   var file = document.getElementById("getval").files[0];
   var reader = new FileReader();
   reader.onloadend = function(){
      document.getElementById('clock').style.backgroundImage = "url(" + reader.result + ")";        
   };
   if(file){
      reader.readAsDataURL(file);
    }else{
    }
}