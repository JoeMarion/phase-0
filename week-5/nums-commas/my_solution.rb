# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin
# What is the input?
The input is the number you want to add commas to

# What is the output? (i.e. What should the code return?)
The output is the input with commas added
# What are the steps needed to solve the problem?
Create a method that takes an integer
Store the length of the int
if the integer is less than 1000 just return it as a string
create a new variable with the number split into an array
reverse the array
create a loop to inspert a common at the third spot in every array index
reverse the array back then join and return

=end

# 1. Initial Solution

def separate_comma(number)
  number_length = number.to_s.length.to_i
  if number < 1000
    return number.to_s
  else
    number_a = number.to_s.split('')
    number_a.reverse!
    i = 3
    while i <= number_length
      number_a.insert(i, ',')
      i += 4
    end
    number_a.reverse!
    number_a = number_a.join
    return number_a
  end
end

# 2. Refactored Solution

def separate_comma(number)
  number_length = number.to_s.length.to_i
  if number < 1000
    return number.to_s
  else
    number_a = number.to_s.split('')
    number_a.reverse!
    i = 3
    while i <= number_length
      number_a.insert(i, ',')
      i += 4
    end
    number_a.reverse!
    number_a = number_a.join
    return number_a
  end
end



# 3. Reflection

=begin
What was your process for breaking the problem down? What different approaches did you consider?



Was your pseudocode effective in helping you build a successful initial solution?


What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?


How did you initially iterate through the data structure?


Do you feel your refactored solution is more readable than your initial solution? Why?


=end