
<script type = "text/javascript">

function num(n){
	this.num = n;
	this.oddEven = odd_Even;
	this.sq = sqr
}

function odd_Even(){
	return this.num % 2 == 0;
}

function sqr(){
	return this.num * this.num;
}

var n = new num(5);

</script>

<body>

<script type = "text/javascript">

document.write(n.num, n.oddEven, n.sq);

</script>
