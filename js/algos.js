var arr = ["long phrase","longest phrase","This is an even longer phrase","longer phrase"];
wordLength = {};			//create an emppty object to store values

function longWord() {                     //create a function
	for(i = 0; i < arr.length; i++) {
	wordLength[arr[i]] = arr[i].length;     // Add the strings in array named arr as keys in object wordLength... the values will equal the length of each string
	}
 	console.log(wordLength);

	var maxValue = 0;
	for (var key in wordLength){
     if (wordLength[key] > maxValue){			// Determine the key with the max value
          maxValue = wordLength[key];			// set the max value of the wordLength object to a variable maxValue
     }
	}
	for (var key in wordLength){
	if (wordLength[key] === maxValue) {			//if the maxValue is found in the wordLength object, print the key that has the maximum value
      console.log(key); 
     }
	}
}

longWord();

// The below code compares two objects and returns true if the objects share at least one key-value pair, otherwise it returns false
laos = {name: "Steven", age: 54};
austria = {name: "Tamir", age: 54};

function compare(laos, austria) {
	for(var key in laos) {
		if (laos[key] === austria[key]) {     //compares keys/key values in both objects
	 		var responseY = true;}
	 	else {
	 		var responseN = false; }
    }
	if(responseY || responseN === true) {
			console.log(responseY); }
		else {
			console.log(responseN);}
}

compare(laos,austria);


// This code generates random words 
  // This function that takes an integer for length, and builds and returns an array of strings of the given length.

var numberOfWords = 3;       // Variable for integer to be pased into function

  // Create function to generate random word
function generateWord(numberOfWords) {
	var word = []           // words will be stored in this array
	var randomLength = null
	var alphabets = "abcdefghijklmnopqrstuvwxyz"

	//Generate random length of word (betweeen 1- 10 inclusive)
	min = Math.ceil(1);
	max = Math.floor(10);
	randomLength = Math.floor(Math.random() * (max - min + 1)) + min;
	//return randomLength

	//Generate randomWord
	var arrOfGeneratedAlphabets = []
		this.baseWord = function() {
		  for(i=0; i < randomLength; i++) {
			arrOfGeneratedAlphabets[i] = alphabets[Math.floor(Math.random() * (alphabets.length))]
		}
		return word = arrOfGeneratedAlphabets.join("");
		}
		
		//Generate several words based on integer passed into root function
		this.wordGenerator = function(){
		  for(b=0; b < numberOfWords; b++){
	   console.log(this.baseWord());
	                   }
		             }
}

var number = 4;
a = new generateWord(number);
a.baseWord();
a.wordGenerator();

