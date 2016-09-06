// lib/quiz.js

"use strict";

var read = require('read');

var Question = require("./question.js");

var options = "";
var questionIndex = 0


class Quiz {
	constructor() { 
		this.questions = [];
	}

	addQuestion (question) {
		this.questions.push(question)
	}

	askQuestions () {
		options = {
			prompt: `${this.questions[questionIndex]}\n>`,
		};
		read(options, verifyAnswer);
		questionIndex += 1
		if (questionIndex < this.questions.length){
			askQuestions();
		}

	}

}

function askAQuestion (question) {
	options = {
		prompt: `${question.question}\n>`,
	};
	read(options, verifyAnswer);
	questionIndex += 1
	if (questionIndex < this.questions.length){
		askAQuestion(this.questions[questionIndex]);
	}

}

function verifyAnswer (err, answer) {
    while (answer != question.answer) {
    	console.log("That is incorrect, try again");
    	read(options, verifyAnswer);
    }
}




module.exports = Quiz;