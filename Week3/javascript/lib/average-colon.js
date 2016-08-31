function averageColon (numbers) {
	console.log(typeof(numbers)+": "+numbers)
	if (numbers === undefined || numbers == "") { return 0 } 
	numbers = numbers.replace(/&/g,':');
	var numbersArray = numbers.split(":");
	var numbersSum = 0;
	numbersArray.forEach(function (number) {
		if (isNaN(number)) {
			number = 0
		} else {
			number = parseInt(number)
		}
		numbersSum += number;
	});

	return numbersSum / numbersArray.length;
}

module.exports = averageColon;