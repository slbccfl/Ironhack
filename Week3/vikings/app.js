vikingVillage = [];
vikingVillage.push(new Person("Bert", 11, 98));
vikingVillage.push(new Person("Ernie", 9, 89));
vikingVillage.push(new Person("Arnold", 15, 105));
vikingVillage.push(new Person("Herman", 8, 72));
vikingVillage.push(new Person("Ted", 12, 99));
vikingVillage.push(new Person("Tom", 10, 99));
vikingVillage.push(new Person("Dick", 11, 101));
vikingVillage.push(new Person("Hairy", 12, 104));

function PitFight(viking1, viking2) {
	for (i=0;i<5;i++) {
		viking1.attack(viking2);
		if (viking1.health < 20 || viking2.health < 20) {
			break;
		}
	}
}