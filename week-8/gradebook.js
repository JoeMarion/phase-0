/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
// var gradebook = {};

// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {};
// }

// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]].testScores = scores[i];
// }

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// }

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores)
// }

// var average = function(int_array) {
//   var answer_var = 0;
//   for (var i = 0; i < int_array.length; i++) {
//     answer_var += int_array[i];
//   }
//   return answer_var / int_array.length
// }



// __________________________________________
// Refactored Solution

var gradebook = {};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
}

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
}

var average = function(int_array) {
  return int_array.reduce(function(sum, value) {
    return sum + value; }) / int_array.length
}






// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// It wasn't very challenging to add functions to objects and it really improved their usefulness. There seems to always be a way to add them in and get them to work with the code that I am working on at the time.

// How did you iterate over nested arrays in JavaScript?

// I used a for loop still with the iterator as the index point. Using bracket and dot notation made it easy to go back and for and pull what was needed.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// I learned how to use the reduce method. I had seen it a couple of times before, but I was able to incorporate it within my average function this time.





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)