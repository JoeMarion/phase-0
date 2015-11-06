// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Myself
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Use a for in loop to loop through the votes variable to access each person voting
// Use another for in loop to access each position that was voted for
// Check if the vote counter already counted votes for candidate
// If there is a vote, += 1 to the voteCounter with the candidate's position
// If not set the value to one for candidate position property within voteCount

// __________________________________________
// Initial Solution


// for (var person in votes) { // Loops through each property of votes
//   for (var position in votes[person]) { // Loops through each property of each property in votes
//     if (voteCount[position].hasOwnProperty(votes[person][position])) { // Checks if the voted candidate has votes within the voteCount variable
//       voteCount[position][votes[person][position]] += 1; // Adds one to property of candidate within position voted for
//     }
//     else {
//       voteCount[position][votes[person][position]] = 1; // If there isn't a vote established it sets the first one
//     }
//   }
// }


// for (position in voteCount) { // Loops through voteCount
//   var winnerCount = 0 // Sets a counter that will reset to 0 every loop through voteCount
//   for (candidate in voteCount[position]) { // Loops through the candidates within the position
//     if (voteCount[position][candidate] > winnerCount) { // If the candidate has more votes than the counter
//       winnerCount = voteCount[position][candidate]; // Set the value of the counter to the votes of the current person through the loop
//       officers[position] = candidate; // Set the position in the officers variable to the current candidate and when it loops through the entire loop the person left will be the one with the highest votes
//     }
//   }
// }



// __________________________________________
// Refactored Solution

for (var person in votes) {
  for (var position in votes[person]) {
    if (voteCount[position].hasOwnProperty(votes[person][position])) {
      voteCount[position][votes[person][position]] += 1;
    }
    else {
      voteCount[position][votes[person][position]] = 1;
    }
  }
}


for (position in voteCount) {
  var winnerCount = 0
  for (candidate in voteCount[position]) {
    if (voteCount[position][candidate] > winnerCount) {
      winnerCount = voteCount[position][candidate];
      officers[position] = candidate;
    }
  }
}





// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// I ended up watching some YouTube videos explaining some of the loops before starting this challenge and that was really helpful. I learned that once I had a grasp on what the loop was doing and keeping track of what variable meant what it was relatively easy.

// Were you able to find useful methods to help you with this?

// hasOwnProperty was a new method I learned for this challenge. I had originally created an array that I defined before the loop and used the array.length to compare, but it made other parts of this challenge more difficult. I looked up if there was a better way and this was what I found.

// What concepts were solidified in the process of working through this challenge?

// Definitely loops in JavaScript. The amount that I had to use them made it easy to start to understand them better.


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)