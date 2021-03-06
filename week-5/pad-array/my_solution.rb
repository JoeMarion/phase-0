# Pad an Array

# I worked on this challenge [with: Eric Dell'Aringa]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


=begin
# 0. Pseudocode

# What is the input?

A method that takes an array as the first value, a integer specifying the output array length, and a value that will define the the extra slots in the array.

# What is the output? (i.e. What should the code return?)

Output is going to be an array with the length specified by the integer and the value specified by the third argument.


# What are the steps needed to solve the problem?

first we need to define a method that takes 3 arguments.

output will equal our initial array
then we need to determine the initial array length.
if the initial array length is bigger than the proposed it should return the initial array
create a count variable and set it to 0

WHILE (initial array length + the count variable)
push the value into the the array
add one to our count
END

output our array

=end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new
#   new_array += array
#   new_array.fill(value, array.length...min_size)
# end

# def pad!(array, min_size, value = nil) #destructive
#     array.fill(value, array.length...min_size)
# end

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array += array
  new_array.fill(value, array.length...min_size)
end

def pad!(array, min_size, value = nil) #destructive
    array.fill(value, array.length...min_size)
end

# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?

Yes, using our pseudocode breaking the problem down into smaller steps was not difficult.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Our biggest difficulty was differentiating between the destructive and the non-destructive methods. We didn't have problems translating our pseudocode, but at first what we thought was the non-destructive ended up being destructive. That made us research why and what was different.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution was successful in the destructive test when we were testing to see if the non-destructive one worked. This caused us to go back and do more research.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We found a way to make our destructive method one line. This may not have made it as readable, but our goal was to make the shortest line of code for this solution.

How readable is your solution? Did you and your pair choose descriptive variable names?

We chose descriptive variable names. Our non-destructive is definitely much more readable than our destructive, but we set a goal to see how short we can make one of them.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods permanently change the code they are called on, when non-destructive uses the code from which they are called on without changing.

=end
=======