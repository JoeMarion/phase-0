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