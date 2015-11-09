// Credit Card validator

// I spent [] hours on this challenge.

// 0. Pseudocode

/*

Create a FUNCTION that accepts an INT as the argument
RETURN an error IF the card is not 16 digits
Create an array to store the digits separately
Use a FOREACH loop to double even numbers and add to a new array and not double odd ones
Combine the array to make one number then split it again into single digits within a new array
Set a new variable to be the sum off all the digits
Loop through the array adding every digit to the variable
IF the variable % 0 is also 0 then it is true
IF not then false

*/

function creditCardValid(number) {
  if (number.toString().length != 16) {console.log("Card must have 16 digits")}
    else {
      var digitContainer = [];
      var cardDigits = []
      var cardDigits = ('' + number).split('');
      for( var i=0; i < cardDigits.length; i++) {
        if (i % 2 == 0) {
          digitContainer.push(cardDigits[i])
        } else{
          digitContainer.push(cardDigits[i] * 2)
        }
      }

      var order = ('' + (digitContainer.join(''))).split('');

      var totalAmount = order.reduce(function(sum, order) {
        return sum + parseInt(order, 10)
      }, 0)

      totalAmount % 10 == 0 ? true : false
    }
}

/*
Reflection

What concepts did you solidify in working on this challenge?

I made a point to learn how to use the reduce function with this challenge. This lead to me understanding a little bit of the differences between how Ruby and Javascript interpret certain functions. I spent a lot of time working on not using the for loop to add everything and realized that I hadn't converted the strings to ints which led me to parseInt.

What was the most difficult part of this challenge?

Implementing the reduce function. I did not fully understand it before or how it worked exactly, but after putting in the time to make sure I understood what it was doing instead of just copying it from the docs, it really makes sense now.

Did you solve the problem in a new way this time?

It was very similar, but I think this way was more efficient.

Was your pseudocode different from the Ruby version? What was the same and what was different?

I didn't look at my previous example until near the end. I ended up solving it very similarly, but my psuedocode was more thorough, which is something I was commonly critiqued on.

*/