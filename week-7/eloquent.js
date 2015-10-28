// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var something = 5
something = something * something

// Favorite food program

function favFood(food) {
  food.length > 0 ? alert("Hey! That is my favorite food too!") : alert("You did not enter a food.");
}

favFood(prompt("Please enter a food."))


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle

for (var i = 1; i < 8; i++){
  var octothrope = "#"
  console.log(octothrope.repeat(i))
}

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b){
    return a;
  } else {return b;}
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me {
  name: "Joe",
  age: 24,
  favoriteFoods: ["Cake", "Angel Food Cake", "Chocolate Lava Cake"],
  quirck: "Cake is okay."
};