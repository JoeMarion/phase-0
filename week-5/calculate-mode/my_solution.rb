# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Armani Saldana]

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?

# Numbers or strings

# What is the output? (i.e. What should the code return?)

# Return an array with the most frequent values

# What are the steps needed to solve the problem?

# define a method that takes an array
# create a hash
# create an empty array
# loop through the array adding one to the value of the hash if the keys match the loop
# find the key with the highest value and return it as an array




# 1. Initial Solution

def mode(array)
  mode_hash = Hash.new(0)
  answer_array = []
  array.each do |i|
    if mode_hash.has_key?(i)
      mode_hash[i] +=1
      # print mode_hash[i]
    else
      mode_hash[i] += 1
      # print mode_hash[i]
    end
    # mode_hash.pop << answer_array
    # puts answer_array

  end
  max = mode_hash.max_by {|k, v| v}
  answer_array << max[0]
  return answer_array
end



# 3. Refactored Solution

def mode(array)

  arrays_mode = array.inject({}) { |k, v| k[v] = array.count(v); k }
  arrays_mode.select { |k,v| v == arrays_mode.values.max }.keys
end


__END__

# 4. Reflection

Which data structure did you and your pair decide to implement and why?

We used a hash for our solution. We knew that we needed to have a key that stored the number and a value that stored the number of times it appeared in the original array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I would say it was about even. Our code this time may not have been as successful, but I believe that it was more due to not understanding how to move on near the end with what we had. There probably was a solution, we just didn't know it. Our initial code was getting far too long and confusing that it needed to be so we refactored a little sooner which ended up helping us in the long run.

What issues/successes did you run into when translating your pseudocode to code?

The issue we had with our original code was that we weren't sure how to display multiple keys that had the same number of values. We ended up going in reverse through our problem until we got to the beginning and practically rewrote the whole thing. The only thing that stayed the same was we knew we were going to use a hash.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

In my refactored code I used the .inject method to store a hash with the number of counts within the array. This does so by initializing an enumerator as an array and storing the number as the key and the amount it appears as the value. Then I used the .select method to be able to select every element within the first hash who has the highest value. This was a way I was able to show multiple values that share the highest repetitiveness.

