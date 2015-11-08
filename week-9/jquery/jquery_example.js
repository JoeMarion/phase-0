// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body')
mascotElement = $('.mascot')
all = $('*')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$( "h1:first" )
  .css({'background-color' : 'green', 'opacity' : '.5', 'border-style' : 'solid'}  )
  .html("Copperheads 2016");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.programmablepower.com/custom-power-supply/Copperhead-High-Current/pix/Copperhead.png')
    $(this).animate({
      opacity: 0.25,
      left: "+=50",
      height: "toggle"
   }, 5000, function() {
    // Animation complete.
  });
  })

$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })








})  // end of the document.ready function: do not remove or write DOM manipulation below this.


// What is jQuery?

jQuery is a JavaScript library that lets you control HTML by selecting DOM elements and manipulating them. They also allow you to create animations, handle events, and even provide capabilities to create plugins on top of the JavaScript environment.

// What does jQuery do for you?

// jQuery allows for a more simpler way of writing JavaScript that would otherwise be more complex. It is client based so that it is fast and feature rich.

// What did you learn about the DOM while working on this challenge?

// I learned a little more on how the DOM is formed and manipulated. jQuery was a great way to see how to use a JavaScript library to control specific DOM elements and how it is structured.