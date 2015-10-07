####4.2 Numbers, Letters, and Variable Assignment

##What does `puts` do?

`puts` (put string) will print out the output to the console with a new line, but it returns the value of nil. It is similar to the commands: `p` and `print`. Whereas `p` will return the value of the code and print to the console, and `print` is near identicle to `puts` except without the new line.

##What is an integer? What is a float?

Integers are numbers without decimals. Floats, or otherwise known as floating-point numbers, are numbers with decimal points.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division is the most familiar type outside of the programming world. It is what calculators use because it returns the exact number that is divided including whatever decimal place requested. Integer division is different because it only returns the whole number rounded down. If I wanted to coffee for as many people at the office at $3 per cup, but only had $20 I wouldn't be able to buy 6.6 cups of coffee. I would round down to 6 cups of coffee for my office.


#Chris Pine's exercises:
```ruby
year = 365
decade = year * 10
hour = 24
minutes = 1440
seconds = minutes * 60
seconds_in_year = year * seconds

puts "There are #{year * hour} hours in a year."
puts "There are #{minutes * decade} minutes in a decade"
puts "If I am 24 years old, than I am #{(year * 24) * seconds} seconds old."
puts "If Chris Pine is 1,160 million seconds old, he is #{1160000000 / seconds_in_year} years old."
```

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles basic math just like expected. It is similar to that of a traditional calculator except that there is a difference on whether or not you are using integers or floats. If you are requiring an answer that has a decimal place you are going to need to use a floating-point number. This is typically just adding a decimal to the numbers you are using or the method to specifically change them to a float (.to_f). If you use just integers your answer will return as integers (whole numbers that include their negatives.)

##What is the difference between integers and floats?

Integers are like whole numbers, but they also include negative numbers that do not extend into any decimal place. Floats or floating-point numbers are numbers that can include decimal places. Example: 1 is an integer, 1.0 is a float.

##What is the difference between integer and float division?

Integer division will round the number down and drop the remainer. Float division will return the exact number out to a decimal place.

##What are strings? Why and when would you use them?

Strings are a sequence of characters or variables. They can be used to represent text within programming along with other non-data type information. It can be used to display specific text.

##What are local variables? Why and when would you use them?

Local variables are variables that are valid within a local area of your code. Local variables exist within the definition of a Ruby module, method, or class. This area of also known as the local scope. You would use local variables when you want the variable to not mess with the variables outside of the method being used.

##How was this challenge? Did you get a good review of some of the basics?

This challenge was a good review of the code and a good introduction to RSPEC. It was relatively easy, which was almost confusing because setting up the three files for RSPEC seemed to take longer than the actual typing of it.