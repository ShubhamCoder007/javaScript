function date(){
	var time = new Date();
	var h = time.getHours();
	var m = time.getMinutes();
	var s = time.getSeconds();
	document.write(h+":"+m+":"+s+"<br>");
}

//it calls the mentioned function every specified milliseconds
setInterval("date()",1000);