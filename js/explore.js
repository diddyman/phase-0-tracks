// Function should take a word
// Function should split word into individually letters
// Function should reverse letters
// Function should join letters

function reverseInput(str) {
	var splitWord = str.split("");
	var reverseWord = splitWord.reverse();
	var joinWord = reverseWord.join('');
	console.log(joinWord);
}

reverseInput("hello")

// Another approach is to print word from last to first

//function reverseString(word)  {
// var newWord = "";
//	for (var i = word.length - 1; i >= 0; i--) {
//		newWord += word[i]; 
// 	}
//    return newWord;
//}


//reverseString('Felicia');
