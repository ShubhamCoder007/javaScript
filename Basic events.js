<html>
<head></head>
<body onUnload = "alert('Goodbye!')">
<script type = "text/javascript">

function creator(){
	document.write("Created by Shubham Banerjee!");
}

document.write("hello world");
</script>

<form>

<input type = "button" value = "click" onclick = "alert('clicked!'); alert('successful!')">
<a href = "google.com" onMouseOver = "alert('Google')"> Google </a>
<br>
<a href = "yahoo.com" onMouseOut = "alert('please come back to yahooooo...')"> Yahoo </a>
<br><br>
<input type = "button" value = "creator" onclick = "creator">

</form>

</body>
</html>
