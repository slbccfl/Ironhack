var myRover = {
  position: [0,0], 
  direction: 'N'
};

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  }
}

function goBackward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]--
      if (rover.position[0] < 0){
        rover.position[0] = 9
      }
      break;
    case 'E':
      rover.position[1]--
      if (rover.position[1] < 0){
        rover.position[1] = 9
      }
      break;
    case 'S':
      rover.position[0]++
      if (rover.position[0] > 9){
        rover.position[0] = 0
      }
      break;
    case 'W':
      rover.position[1]++
      if (rover.position[1] > 9){
        rover.position[1] = 0
      }
      break;
  }
}


function execCommands(rover, commandString){
  for (i=0;i < commandString.length;i++){
    command = commandString.charAt(i);
    execACommand(rover, command);
    console.log(command + " - New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "] Rover is facing: " + rover.direction);
  }
}

function execACommand(rover, command){
  switch(command) {
    case 'f':
      goForward(rover)
      break;
    case 'b':
      goBackward(rover)
      break;
    case 'r':
      turnRight(rover)
      break;
    case 'l':
      turnLeft(rover)
      break;
    default:
      alert('Illegal command encountered ' + command);
  }
}

function turnLeft(rover){
// ...and now for some creeping elegance...
// Below is my initial code, but I wanted to try this code...
leftSeq = 'NWSE'
var newDirectionIndex = leftSeq.indexOf(rover.direction) + 1;
if (newDirectionIndex > 3){ newDirectionIndex=0; }
rover.direction = leftSeq.charAt(newDirectionIndex);
/*  switch(rover.direction){
    case 'N':
      rover.direction = 'W';
      break;
    case 'S':
      rover.direction = 'E';
      break;
    case 'E':
      rover.direction = 'N';
      break;
    case 'W':
      rover.direction = 'S';
  }*/
}

function turnRight(rover){
// Below is my initial code, but I wanted to try this code...
rightSeq = 'NESW'
var newDirectionIndex = rightSeq.indexOf(rover.direction) + 1;
if (newDirectionIndex > 3){ newDirectionIndex=0; }
rover.direction = rightSeq.charAt(newDirectionIndex);


/*  switch(rover.direction){
    case 'N':
      rover.direction = 'E';
      break;
    case 'S':
      rover.direction = 'W';
      break;
    case 'E':
      rover.direction = 'S';
      break;
    case 'W':
      rover.direction = 'N';
  }*/
}

console.log("Initial Rover Position: [" + myRover.position[0] + ", " + myRover.position[1] + "] Rover is facing: " + myRover.direction);
execCommands(myRover,'fffrfflfffbb');
// execCommands(myRover,'fffrfffrfffrfffr');
