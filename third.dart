import 'dart:html';
import 'dart:math';

// about variables and some math functions
void main() {
	varTest();
	mathTest();
}

void varTest() {
	// 6 variables - integers, floats, booleans, strings, lists, maps
	var randInt = 10; // auto detection to integers
	var randString = "string";

	String s = "some string";
	bool vote = true;
	int maxInt = 999999999999; 
	double pi = 3.142145; // 15 digit of decimal precision

	List randList = [1, 2, 3, 4];
	Map map = {1: "Tom", 2: "Joe"};

	querySelector("#output").text = "Max Int: ${maxInt + 1}\nPI: ${pi+0.01}\nFirst List Item: ${randList[0]}";
}

void mathTest() {
	var r = new Random();
	var random = new Random();
	var number = 143;
	var n = 6.454;
	r.nextInt(100);
	int x = 1;
	x =x + 2;
	querySelector("#output").text = "Random: ${r.nextInt(10)}, 5.0 + 4.0 = ${5.0 + 4.0}\n5.0 - 4.0 = ${5.0 - 4.0}\n5.0 * 4.0 = ${5.0 * 4.0}\n5.0 / 4.0 = ${5.0 / 4.0}\n5.0 % 4.0 = ${5.0 % 4.0}\ne^3 = ${exp(3)}\nlog(1000) = ${log(1000)}\nmax(10,5) = ${max(10,5)}\nmin(10,5) = ${min(10,5)}\n10^5 = ${pow(10,5)}\nsqrt(81) = ${sqrt(81)}\nround(6.45) = ${number.round()}\nRandom Numbers : ${random.nextInt(100)}, ${random.nextInt(100)}, ${random.nextInt(100)}\n";
 	// other math functions include: acos, asin, cos, sin, tan  ...
}