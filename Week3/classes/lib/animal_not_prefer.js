// lib/animal.js

function Animal (name, noise) {  // defines both class and constructor 
	this.name = name;
	this.noise = noise;
};

Animal.prototype.makeNoise = function() {
	console.log( this.name + ' says: ' + this.noise);
};

Animal.prototype.shout = function() {
	console.log (this.name + ' shouts: ' + this.noise.toUpperCase());
};

module.exports = Animal;
