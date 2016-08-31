function countColors (theColor, colorArray) {
	var count = 0;
	colorArray.forEach(function (temp_color) {
		if (theColor === temp_color) { count+=1 }
	});
	return count;
}

module.exports = countColors;