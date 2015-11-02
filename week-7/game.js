// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Roll 6 dice to end with the most matches out of the 6 dice. The player will receive three turns and can choose what die/dice to reroll
// Overall mission: Create a basic dice game
// Goals: Be able to play against the computer and determine a winner
// Characters: Player and the Computer
// Objects: Player and the Computer
// Functions: roll, keptValue

// Pseudocode
// Create two variables that each have an array of 6 numbers randomized to simulate rolled dice
// Create Player and Computer Object that have values for their rolled dice and kept values
// Create a function to ask player what value they want to keep
// Create a variable of how many rolls have happened
//

// Initial Code

//------------------objects -----------------------

var player = {
  dice: [],
  keptValue: null
};

var computer = {
  dice: [],
  keptValue: null
};

//------------------functions -------------------

function randomDiceGen (low, high) {
  return Math.floor(Math.random() * (high - low + 1) + low);
}

function firstRoll() {
  var playerDice = new Array(6);
  var computerDice = new Array(6);

  for (var i = 0; i < playerDice.length; i++) {
    playerDice[i] = randomDiceGen(1, 6);
    computerDice[i] = randomDiceGen(1, 6);
  }

  player.dice = playerDice;
  computer.dice = computerDice;
}

function reRoll(object, array) {
  var playerFinalDice = [];
  for (var i = 0; i < array.length; i++){
    if (array[i] === object.keptValue) {
      playerFinalDice.push(object.keptValue);
    }
    else {
      playerFinalDice.push(randomDiceGen(1, 6));
    }
  }
  object.afterRoll = playerFinalDice;

}

function mode(array) {
  var modeContainer = {};
  var maxE1 = array[0], maxCount = 1;
  for (var i = 0; i < array.length; i++) {
    var e1 = array[i];
    if (modeContainer[e1] === null) {
      modeContainer[e1] = 1;
    }
    else {
      modeContainer[e1]++;
    }
    if (modeContainer[e1] > maxCount) {
      maxE1 = e1;
      maxCount = modeContainer[e1];
    }
  }
  return maxE1;
}

function winner(player, computer) {
  var playerCount = 0;
  var compCount = 0;

  for (var i = 0; i < player.length; i++) {
    if (player[i] === mode(player)) {
      playerCount += 1;
    }
    if (computer[i] === mode(computer)) {
      compCount += 1;
  }
}
  if (playerCount === compCount) { console.log("It was a tie.");}
  else if (playerCount > compCount) { console.log("Congratulations, you won!");}
  else { console.log("You ... lost..");}

}

// ------------------------driver code ----------------

var newGame = firstRoll()
console.log("Player's Dice: ")
console.log(player.dice)
console.log("  ")
console.log("Computer's Dice: ")
console.log(computer.dice)
player.keptValue = 6 //prompt("Please choose the number you are trying to roll the most matches.");
computer.keptValue = mode(computer.dice)
console.log(" ")
console.log("Rolling dice complete!")
console.log(" ")
console.log("Players dice: ")
reRoll(player, player.dice)
console.log(player.afterRoll)
console.log(" ")
console.log("Computer's dice: ")
reRoll(computer, computer.dice)
console.log(computer.afterRoll)
winner(player.afterRoll, computer.afterRoll)

// Refactored Code






// Reflection
// What was the most difficult part of this challenge?

//First it was finding a game I wanted to do. At first I was trying to do a three-card poker one but I found I was spending way too much time on it. After that it was mapping out each value. JS so far has been slightly more difficult for me than Ruby. I spent a long time due to values of my objects were returning undefined.

// What did you learn about creating objects and functions that interact with one another?

// I learned that it can blur together very easily if left unkempt.

// How can you access and manipulate properties of objects?

// You can use the dot notation or call it using the string method. player["dice"] would work just like player.dice except the string notation would let you use forbidden symbols that dot notation would stop you.