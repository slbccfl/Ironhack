//EXERCISE 1
//
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Complete the following function to get the letter linked to a spanish DNI
// The functions receives an eight-digit number and returns a single letter.
// The algorithm to calculate the letter is as follows:
// The number is divided by 23 and the remainder is replaced by a letter determined by the following table: 
//	 _____________________________________________________________
//  | 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 |
//	| T R W A G M Y F P D X  B  N  J  Z  S  Q  V  H  L  C  K  E  |
//	|____________________________________________________________|
// 
// You can use 'result' variable to store the resulting letter.
// If your code works, the last three equalities will be "true"


/*

function dniLetter( dni ) {


	var lockup = 'TRWAGMYFPDXBNJZSQVHLCKE';
	var result = '';

	if (typeof dni !== 'number') {
		result = 'Invalid parameter'
	} else if (dni < 0) {
		result = 'Invalid parameter'
	} else {
		result = lockup[dni % 23];
	}

	return result;
}

console.log( dniLetter( 12345678 ) === 'Z');
console.log( dniLetter( 34667892 ) === 'S');
console.log( dniLetter( 92234488 ) === 'A');

*/


//EXERCISE 2
//
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Improve the exercise above to be able to perform this new functionality
// Of course it has to keep working as usual with right inputs.


/*
console.log( dniLetter( -1 ) === 'Invalid parameter');
console.log( dniLetter( "A1234567" ) === 'Invalid parameter');
*/

//EXERCISE 3
//
// Restore the comments marks (/* */) of the previous exercises. First two exercises have to be commented 
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Write a function that takes an array of words and returns the length of the longest one.


/*
function findLongestWord( array_words ){
	var longestLength = 0;
	for (index = 0; index < array_words.length; index++){
		word = array_words[index]
		if (word.length > longestLength){
			longestLength = word.length;
		}
	}
	return longestLength;

}

console.log( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"] ) ===6 );
console.log( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) === 7 );
console.log( findLongestWord( ["Red", "Blue", "Green"] ) === 5 );
*/


//EXERCISE 4
//
// Uncomment the exercise code deleting /* and */ chars
// Now we are going to save the longest length of every array in a new array called array_lengths
// Open the console and reload the index page to see the result of the code.
// You have to complete the calculateAverage function (it is a few lines below), and it has
// to return the average of every number in a array instead of the "Not implemented yet" message.


/*
var array_lengths = [];
array_lengths.push( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"]) );
array_lengths.push( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) );
array_lengths.push( findLongestWord( ["Red", "Blue", "Green"] ) );
// <place to add more lines>, read next commented text and you will understand
newWordString = 'JavaScript is a high-level, dynamic, untyped, and interpreted programming language.[6] It has been standardized in the ECMAScript language specification.[7] Alongside HTML and CSS, it is one of the three core technologies of World Wide Web content production; the majority of websites employ it and it is supported by all modern Web browsers without plug-ins.[6] JavaScript is prototype-based with first-class functions, making it a multi-paradigm language, supporting object-oriented,[8] imperative, and functional programming styles.[6] It has an API for working with text, arrays, dates and regular expressions, but does not include any I/O, such as networking, storage, or graphics facilities, relying for these upon the host environment in which it is embedded.[7]'
newWordArray = newWordString.split(' ')
array_lengths.push( findLongestWord(newWordArray));
newWordString = 'Although there are strong outward similarities between JavaScript and Java, including language name, syntax, and respective standard libraries, the two are distinct languages and differ greatly in their design. JavaScript was influenced by programming languages such as Self and Scheme.[9]'
newWordArray = newWordString.split(' ')
array_lengths.push( findLongestWord(newWordArray));
newWordString = 'JavaScript is also used in environments that are not Web-based, such as PDF documents, site-specific browsers, and desktop widgets. Newer and faster JavaScript virtual machines (VMs) and platforms built upon them have also increased the popularity of JavaScript for server-side Web applications. On the client side, JavaScript has been traditionally implemented as an interpreted language, but more recent browsers perform just-in-time compilation. It is also used in game development, the creation of desktop and mobile applications, and server-side network programming with run-time environments such as Node.js.'
newWordArray = newWordString.split(' ')
array_lengths.push( findLongestWord(newWordArray));

console.log( "These are the longest lengths of each group: " + array_lengths );
//console.log( calculateAverage( array_lengths ) === 6 && "The average of longest lengths is: " + calculateAverage( array_lengths ))
console.log("The average of longest lengths is: " + calculateAverage( array_lengths ))

function calculateAverage( array )
{
	var totLength = 0;
	for (i=0;i < array.length;i++) {
		totLength+=array[i];
	}
	return totLength / array.length;
}
*/

// Now add more lengths to the array_lengths. You have to do it where <place to add more lines> is written. 
// You can use this structure: array_lengths.push( findLongestWord( [<add some elements>] ) );
// Don't foget to add words to the array. The longer the better!
// Now reload the page and see how changed the average.



//EXERCISE 5
//
// Restore the comments marks (/* */) of the previous exercises.
// Uncomment this exercise code deleting /* and */ chars
// Now we are going to save the longest length of every array in a new array called array_lengths
// Open the console and reload the index page to see the result of the code.
// Write a function charFreq() that takes a string and builds a frequency listing of the characters contained in it. 
// As a condition you must use the object freqCounter.
// Represent the frequency listing as a Javascript object. Try it with something like charFreq("abbabcbdbabdbdbabababcbcbab").

/*

function charFreq( string ) {
	freqCounter = {};
	for (i=0;i < string.length;i++){
		if (string[i] in freqCounter) {
			freqCounter[string[i]]++
		} else {
			freqCounter[string[i]]=1
		}
	}

	return freqCounter;
}

counter = charFreq("abbabcbdbabdbdbabababcbcbab");
console.log( counter['a'] === 7);
console.log( counter.b === 14);
console.log( counter['c'] === 3);

counter = charFreq("xyyyxyxyxzyxyzyxyxyasdfz");
console.log( counter.x === 7 );
console.log( counter['y'] === 10 );
console.log( counter.z === 3 );
console.log( counter['a'] === 1 );
console.log( counter['s'] === 1 );
console.log( counter.d === 1 );
console.log( counter['f'] === 1 );

*/


//BONUS EXERCISE
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Build a program that transform a boring array into an awesome array.
// The original array has to go through many processes, we divided every process
// in functions. You have to code these functions.
// Here you have some useful functions you can use wherever you need along the program.
// isFinite(), splice(), unshift(), push(), join(), sort(), Math.floor().
// These aren't all the needed functions, and also you can use different ones. They are only suggested functions.
// If you want to know what do they do or learn more functions, you can go to
// https://developer.mozilla.org/en-US/docs/Web/JavaScript
// http://www.w3schools.com/js/default.asp
// Use the search option in both of them to find a function.



function arrayAwesomenator( array ) 
{
	array = deleteRubbish( array );
	array = arrangeElements( array );
	array = beautifyLetters( array );
	array = beautifyNumbers( array );
	array = sortArray( array );
	array = arrayToString( array );


	return array;
}
function deleteRubbish( array )
{
	//It receives an array and returns it without '*' chars
	//Example:  deleteRubbish(['a',1,'*',5]) returns ['a',1,5]
	for (i=0;i<array.length;i++) {
		if (array[i] == '*') {
			removed = array.splice(i,1);
			i--
		}
	}

	return array;
}

function arrangeElements( array )
{
	//It receives an array with numbers and letters mixed and returns it with its items arrange:
	//First goes the numbers and then the letters. The order of the elements together does not matter.
	//Example: arrangeElements(['B', 'a', 4 , 23, 'J']) returns [23, 4, 'B', 'a', 'J']
	return array.sort();
}

function beautifyLetters( array )
{
	//It receives an array with numbers and letters and returns it with uppercase vowels and lowercase consonants. Numbers remain unchanged
	//Example: beautifyLetters([1,5,7,'a','J',p,'E']) returns [1,5,7,'A','j',p,'E']
	for (i=0;i<array.length;i++) {

		if (typeof array[i] == "string" && array[i].search(/[a-zA-Z]/)!=-1) {
			if (array[i].search(/[aeiou]/i) != -1) {
				array[i] = array[i].toUpperCase();
			} else {
				array[i] = array[i].toLowerCase();	
			}
		}
	}
	return array;
}


function beautifyNumbers( array ) 
{
	// console.log('in array: '+array);
	//It receives an array with numbers and letters and returns it with its numbers beautified. Letters remain unchanged
	//Beautify process is to reduce a number into a single digit number by adding all its digits together: 
	// 123 = 6 because 1+2+3 = 6
	// 9 = 9
	// 9956 = 2 because 9+9+5+6 = 29 -> 2+9 = 11 -> 1+1 = 2
	// 793 = 1 because 7+9+3 = 19 -> 1+9 = 10 -> 1+0 = 1
	//Example: beautifyNumbers([23,59, 4,'A','b']) returns [5, 5, 4, 'A', 'b']
	i=0
	while (typeof array[i] == 'number') {
		numberToPass = array[i];
		// console.log(numberToPass);
		if (numberToPass > 9) {
			array[i] = addNumbers(numberToPass);
		}
		i++
	}
	// console.log('out array: ' + array);
	return array;
}
function addNumbers(passedNumber) {
	// console.log('passedNumber: ' + passedNumber);
	newNumber = 0;
	while (passedNumber > 0) {
		newNumber+=passedNumber % 10;
		// console.log('newNumber: ' + newNumber);
		passedNumber -= passedNumber % 10;
		passedNumber /= 10;
	}
	if (newNumber > 9) {
		// Recursion - Pretty cool, huh?
		addNumbers(newNumber);
	}
	// console.log('returned number: ' + newNumber);
	return newNumber;
}

function sortArray( array )
{
	//It receives an array with numbers and letters and returns it with its items sorted. Numbers on one side and letters on the other.
	//Example: sortArray([5,5, 4, 1, 'j', A','b', 'E']) returns [1, 4, 5, 5, 'A', 'b', 'E', 'j']
	return array.sort();
}


function arrayToString( array )
{
	//It receives an array and returns a string with all its elements.
	//Example: arrayToString([1, 4, 5, 5, 'A', 'b', 'E', 'j']) returns "1455AbEj"
	return array.join('');
}

console.log(arrayAwesomenator(["a", 6, "B", "F", "*", 8, 78, "J" ]) === "668Abfj");
console.log(arrayAwesomenator(["*", "j", 6, "A", "F", "*", 8, "C", "b", "a", 78, "J", 43523, 1111, "r", "q", "y" ]) === "46688AAbcfjjqry");

// console.log(arrayAwesomenator(["a", 6, "B", "F", "*", 8, 78, "J" ]));
// console.log(arrayAwesomenator(["*", "j", 6, "A", "F", "*", 8, "C", "b", "a", 78, "J", 43523, 1111, "r", "q", "y" ]));



