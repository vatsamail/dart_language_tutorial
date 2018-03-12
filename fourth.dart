import 'dart:math';
import 'dart:html';
// dealing with conditions and loops
void main() {
	condTest();
	loopTest();
}

void condTest() {
	// Relational : == != > < >= <=
	// Logical && || !

	String output = "";
	double age = 13.0;
	if ((age >=5) && (age <=6)) {
		output = "kindergarten";
	}
	else if ((age >=6) && (age <=16)) {
		output = "public school";
	}
	else if ((age >=16) && (age <=22)) {
		output = "college";
	}
	else if ((age <5)) {
		output = "Stay home";
	}
	else {
		output = "start working";
	}

	output += "\n!(true) = ${!(true)}\n";

	String sh = "Superman";
	switch(sh) {
		case "Batman": 
			output += "Batman!\n";
			break;
		case "Superman":
			output += "Super man\n";
			break;
		default:
			output += "Common man\n";
			break;
	}

	querySelector("#output").text = "Output is ${output}";

}

void loopTest() {
	String output = "";
	int i = 0;
	while(i <= 10) {
		output += "$i, ";
		i++;
	}
	output += "\n";

	do {
		output += ">>$i, ";
		i--;
	}while(i>0);
	output += "\n";


	for (int j = 1; j <= 33; j++) {
		if ( (j%4) == 0) {
			continue;
		}
		if (j == 25) {
			break;
		}
		if ((j%2 ==0)) {
			output += "$j, ";
		}
	}
	output += "\n";


	for (int k = 0; k <= 10; k++) {
		for (int l = 0; l <= 10; l++) {
			output += "K * L = ${k*l}\n";
		}
	}
	output += "\n";

	querySelector("#output").text = "Output is\n${output}\n";
}