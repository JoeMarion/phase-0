// JavaScript Olympics

// I paired [by myself, with:Paul Gouron] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up


// Bulk Up

var athletes = [

  {name:"Sarah Hughes", event:"Ladie's Single"},
  {name:"Joe Marion", event:"JavaScript Olympics"},
  {name:"Paul", event:"JS Olympics"},

]


// console.log(athletes)

var winners = function (athletes) {
  for (var i = 0; i < athletes.length; i++) {
    athletes[i].win = athletes[i].name + " won at " + athletes[i].event + "!";
  }
}

console.log(winners(athletes));
console.log(athletes);


// Jumble your words

// 1 split the string in chunks of one character
// 2 reverse the chunks
// 3 join the chunks again

function jumbled(string){
  return string.split('').reverse().join('');
}

console.log(jumbled("hello!"))


// 2,4,6,8

function evenNumbers(argarray) {
  var a = argarray;
  var b = [];

  for (var i = 0; i < a.length; i++) {
    if ((a[i] % 2) ===0) {
      b.push(a[i]);
    }
  }
  console.log(b)
}

var Numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

evenNumbers(Numbers);

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
// Reflection


What JavaScript knowledge did you solidify in this challenge?

I solidify more of the syntax in this challenge. Switching from Ruby has been the biggest change for me.

What are constructor functions?

Constructors are like simulated classes that are built out of functions.

How are constructors different from Ruby classes (in your research)?

Constructors are a type of method you use to make an instance of a "class". Classes can have multpile instances of it's class on different objects.

*/