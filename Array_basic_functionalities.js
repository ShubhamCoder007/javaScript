//method 1
var num = new Array(1,2,3,4,5);

//method 2
var num1 = new Array(2);
num1[0] = 1;
num1[1] = 2;

//method 3
var num2 = new Array();
num2[0] = 1;
num1[1] = 2;

//functions of arrays
//joins two arrays
var s = num1.concat(num);
var l = s.length;
//last item pops 
var item = s.pop();
num1.push(0);
num1.push(3);
num1.push(-8);
num1.sort();

//stores string in a desired expression
var st = s.join(" -> ");

//adding element via looping and prompt message
var arr = new Array(3);
for(i = 0; i < 3; i++){
	arr[i] = prompt("Enter some thing:","");
}

document.write("You entered:<br>");
for(i = 0; i < 3; i++){
	document.write(arr[i]+"<br>");
}

//associative array, similar to dictionaries of key value pair
var dic = new Array(2);
dic["Shubham"] = "Banerjee";
dic["sis"] = "Disha";
document.write(dic[prompt("Enter the key:","")]+"<br>");

document.write("num: "+num+"<br>");
document.write("num1: "+num1+"<br>");
document.write("num2: "+num2+"<br>");
document.write(s+" len:"+l+" data: "+item+" items: "+st+" pushed and sort: "+num1);

