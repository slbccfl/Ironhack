var countColors = require("./lib/count-colors.js"); // require(./..) indicates that the required function is stored locally

var colorArray = ["indigo","teal","lilac","periwinkle","black","teal","periwinkle","baby blue","teal"];
console.log(colorArray);

// p the_counting_machine.count_colors("indigo", color_array) == 1
console.log(countColors("indigo",colorArray) === 1);
console.log(countColors("teal", colorArray) === 3);
console.log(countColors("periwinkle", colorArray) === 2);

console.log(countColors("green", colorArray) === 0);
console.log(countColors("navy blue", colorArray) === 0);