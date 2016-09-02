require("./lib/person.js")

vikingVillage = [];
vikingVillage.push(new Person("Bert", 11, 98));
vikingVillage.push(new Person("Ernie", 9, 89));
vikingVillage.push(new Person("Arnold", 15, 105));
vikingVillage.push(new Person("Herman", 8, 72));
vikingVillage.push(new Person("Ted", 12, 99));
vikingVillage.push(new Person("Tom", 10, 99));
vikingVillage.push(new Person("Dick", 11, 101));
vikingVillage.push(new Person("Hairy", 12, 104));

function FightersStatus(fightStage,viking1,viking2){
	console.log(fightStage);
	console.log(`fighters: ${viking1.name} vs ${viking2.name}`);
	console.log(`strength: ${viking1.strength} vs ${viking2.strength}`);
	console.log(`health: ${viking1.health} vs ${viking2.health}`);
}

function PitFight(viking1, viking2) {
	var fightStage = "Pit fight beginning:";
	FightersStatus(fightStage, viking1, viking2);
	vikingVillage[0].name
	for (i=0;i<5;i++) {  // up to 5 rounds in a pit fight
		viking1.attack(viking2);
		if (viking1.health < 20 || viking2.health < 20) {
			break; // If either viking's health falls below 20, the pit fight ends
		}
		var fightStage = `After round ${i}:`;
		FightersStatus(fightStage, viking1, viking2);
	}
	// the result of a pit fight is that each viking gains 25% of strength, 
	// and health is recovered 4 times with rest and recuperation
	var fightStage = `Pit fight ends:`;
	FightersStatus(fightStage, viking1, viking2);
	viking1.strength *= .25;
	viking1.health *= 4;
	viking2.strength *= .25;
	viking2.health *= 4;
	var fightStage = `Fighters after recovery:`;
	FightersStatus(fightStage, viking1, viking2);
}

PitFight(vikingVillage[0],vikingVillage[1]);

