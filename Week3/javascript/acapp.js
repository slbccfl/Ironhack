var countColors = require("./lib/average-colon.js"); // require(./..) indicates that the required function is stored locally



// p the_counting_machine.count_colors("indigo", color_array) == 1
console.log(countColors("80:70:90:100") === 85);
console.log(countColors("80&70&90&100") === 85);
console.log(countColors("80:70&90:100") === 85);
console.log(countColors() === 0);
console.log(countColors("") === 0);
console.log(countColors("X"));

