
<script type = "text/javascript">

function num(num, text){
	this.num = num;
	this.text = text;
}

var a = new num(1, "one");
var b = new num(2, "two");

</script>

</head>

<body>

<script type = "text/javascript">

document.write(a.num, a.text);
document.write(b.num, b.text);

</script>
