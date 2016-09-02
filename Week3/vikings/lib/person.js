
"use strict";

class Person {
	constructor(name, health, strength) { 
	this.name = name;
	this.health = health;
	this.strength = strength;
	};

	attack (personAttacked) {
		this.health - personAttacked.strength
		personAttacked.health - this.strength
	}
};