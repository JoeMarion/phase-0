# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

=begin
# Input: An array
# Output: either a random value based on the input or the number of sides it has
# Steps:
1. inittalize and raise arg if no array is passed as input
2. DEF sides and return the LENGTH of the array
3. DEF roll by randomly returning one of the values given in the array.

=end



# Initial and Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new('Please add sides to the die') if labels.length < 1
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(@labels.length)]
  end
end


__END__

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

It wasn't much. I just had to factor in that I was returning a random index from an array instead of a random number, but other than that it was only slightly different.

What does this exercise teach you about making code that is easily changeable or modifiable?

That being able to re-use chunks of code can be helpful in the future.

What new methods did you learn when working on this challenge, if any?

There wasn't any. I didn't even have to refactor because these are one-liners that are really easily read in my opinion.

What concepts about classes were you able to solidify in this challenge?

Setting up ArgumentErrors are a little more solid now.