
var user = {}
var responses = []


function question1() {
  var name = prompt('What is your name?')
  user.name = name
}

question1(); // don’t forget to call the function!

function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

question2();

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
    // your own answers
    case "javascript":
    case "java":
    case "javalive":
    case "scriptyscript":
		responses.push(false);
		break
    case "livescript":
	    responses.push(true);
	    break;
    default: 
		alert("Please answer with one of the choices given");
		return question3();
  }
  
}

question3();

function question4() {
  var sc = prompt('What character should be used to end a JavaScript statement?');
  if (sc.length > 1) {
  	alert("Please enter a single character");
  	return question4();
  } else {
  	if (sc == ";") {
  		responses.push(true)
  	} else {
  		responses.push(false)
  	}
  }
}

question4();

function question5() {
  var bc = prompt('What character should be used to close a JavaScript code block?');
  if (bc.length > 1) {
  	alert("Please enter a single character");
  	return question5();
  } else {
  	if (bc == "}") {
  		responses.push(true)
  	} else {
  		responses.push(false)
  	}
  }
}

question5();

function question6() {
  var jt = prompt('Which of the following is a valid JavaScript data type?\nStatic, Local, +=, Object, Break, Function');
  jt = jt.toLowerCase();
  switch (jt) {
    case "static":
    case "local":
    case "+=":
    case "break":
    case "function":
		responses.push(false);
		break
    case "object":
	    responses.push(true);
	    break;
    default: 
		alert("Please answer with one of the choices given");
		return question6();
  }
  
}

question6();

function evaluateQuiz(responsesArray){
	console.log("Here are your quiz results " + user.name);
	correctResponses = [false,true,true,true,true];
	user.correctAnswers = 0
	user.incorrectAnswers = 0
	for (i=0;i<responsesArray.length;i++){
		if (responsesArray[i] == correctResponses[i]) {
			responseEval = "Correct"
			user.correctAnswers++;
		} else {
			responseEval = "Incorrect"
			user.incorrectAnswers++;
		}
		console.log("Question " + (i+1) + ": " + responseEval);
	}
}
function showResults(){
	console.log("Quiz Results: " + user.correctAnswers + " correct responses out of " + (user.correctAnswers + user.incorrectAnswers) + "\nScore: " + (user.correctAnswers / (user.correctAnswers + user.incorrectAnswers) * 100) + "%");
}

evaluateQuiz(responses);
showResults();