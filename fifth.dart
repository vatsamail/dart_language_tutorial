import 'dart:html';
import 'dart:math';

// Strings

void main() {
	stringTest();
}

void stringTest() {
	String output = "";
	String randString = "I " + " am a long" + " string";
	var randString2 = "Another random string declared as var";

	output += "0th index: ${randString2[0]}\n";
	
	if (randString.compareTo(randString2) < 1) {
		output += " equals";
	}
	else {
		output += "not equals\n";
	}



	if (randString2.contains("random")) {
		output += " string contains the word random\n";
	}


	output += "index of random in the string ${randString2} is ${randString2.indexOf("random")}\n";
	List words = randString2.split(" ");
	output += "Second word in the string - ${randString2} is- ${words[1]}\n";
	output += "Length of the above string is ${randString.length}\n";


	String newS = randString.replaceAll("g", "GGG");
	output += "After playing with G string - ${newS}\n";
	
	newS = randString.substring(6, 10);
	output += "Adding substring 6 to 10 of ${randString} is \"${newS}\"\n";
	

	newS = randString2.toUpperCase();
	output += "Caps : ${newS}\n";
	newS.trim();
	output += "Is empty: ${newS.isEmpty}\n";
	
	

	querySelector("#output").text = "Output is ${output}";
}