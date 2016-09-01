// app.js

"use strict";

var fs = require("fs");

fs.readFile("movies.txt", "utf8", function (theError, movieFileContents) {
	if (theError === null) {
		var movieArray = movieFileContents.split("\n");
		console.log(movieArray);
	} else {
		console.log("Oh no! Error:");
		console.log(theError);
	}

});

// var movieFileContents = File.read("movies.txt");

// var moviesArray = movieFileContents...



function after5Seconds() {
	console.log("5 seconds");
}

function after1Seconds() {
	console.log("1 seconds");
}

function after10Seconds() {
	console.log("10 seconds");
}

setTimeout(after5Seconds, 5000)
setTimeout(after10Seconds, 10000)
setTimeout(after1Seconds, 1000)

console.log("");
console.log("END OF PROGRAM");
console.log("");