import 'dart:html';
import 'dart:math';


// knowing functions

void main() {
	fTest();
}

void fTest() {
	String output = "";
	int ret = getMult(3,  43);
	output += "3 * 43 is ${ret}\n";
	time2(num) => num * 2; // inline function
	output += "56 * 2 = ${time2(56)}\n";
	output += addList(1, 10);
	times3(num) => num * 3;
	output += "12 * 9 = ${getMult(12, times3(3))}\n";
	querySelector('#output').text = "Output is ${output}\n";
}

int getMult(int a, int b) {
	int val = a * b;
	return (val);
}


String addList(int start, [int quantity = 2]) {
	String strList = "";
	for(int i = 1; i <= quantity; i++) {
		strList += "${i}, ";
	}
	return strList+"\n";
}
