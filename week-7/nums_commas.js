// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Peter Wiebe

// Pseudocode

// define method called separate_comma that takes in an integer as arg
// determine if number was less than 1000, if so return the number
// ELSE split the number into an array then reverse it
// create a counter variable of 3
// insert comma at the variable's index in a loop that also increments the counter variable
// reversed the array again and joined it
// returned the array.

// Initial Solution

// function separateComma(number) {
//   if (number < 1000) {
//     return String(number);
//   }
//   else {
//     var commaNumber = [];
//     commaNumber = String(number).split("").reverse();
//     for(var i = 3; i < commaNumber.length; i += 4) {
//       commaNumber.splice(i, 0, ",");
//     }
//   }
//   return commaNumber.reverse().join("");
// }



// Refactored Solution

function separateComma(number) {

  var commaNumber = String(number).split("").reverse();
    for(var i = 3; i < commaNumber.length; i += 4) {
      commaNumber.splice(i, 0, ",");
    }
  return commaNumber.reverse().join("");
}


console.log(separateComma(111));
// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// We approached the problem similarly, but using JS we were able to cut out a portion of our code. It helped going back over the same problem now because I realized what we could do diffently and really cut back on what we did to get a cleaner solution.

// What did you learn about iterating over arrays in JavaScript?

// For this situation, for loops in JS was really helpful. You set the parameters of the loop before the block that is executed. We were able to complete our code in a shorter for loop than we were using a while loop in Ruby.


// What was different about solving this problem in JavaScript?

// Some of the functions were different in JS that the methods in ruby.

// What built-in methods did you find to incorporate in your refactored solution?

// We used the splice function to be able to add the comma at the index point.