####4.2 Numbers, Letters, and Variable Assignment

##What does `puts` do?

`puts` (print string) will print out the output to the console with a new line, but it returns the value of nil. It is similar to the commands: `p` and `print`. Whereas `p` will return the value of the code and print to the console, and `print` is near identicle to `puts` except without the new line.

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