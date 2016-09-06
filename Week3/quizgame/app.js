// app.js

var Quiz = require("./lib/quiz.js");
var Question = require("./lib/question.js");

myQuiz = new Quiz();

question1 = new Question("What color is the sky?", "Blue", 1);
myQuiz.addQuestion(question1)
question2 = new Question("What color is the sea?", "Blue", 2);
myQuiz.addQuestion(question1)
question3 = new Question("What color is grass?", "Green", 3);
myQuiz.addQuestion(question1)

myQuiz.askQuestions()

