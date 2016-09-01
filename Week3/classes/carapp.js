// carapp.js

var Car = require("./lib/car.js");

var myCar = new Car("Thunderbolt", "Bang!");
myCar.makeNoise();

var anotherCar = new Car("Junker", "Phut Phut");
anotherCar.makeNoise();

var yetAnotherCar = new Car("Dinkie", "Beep Beep");
yetAnotherCar.makeNoise();