# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Split each word into an array using split(" ") method
# Enumerate over each index of the array using -n to store the letter in a new array
# Join the solution back



# Initial Solution

# def reverse_words(string)
#   split_array = string.split(' ')
#   answer_array = Array.new

#   split_array.each do |word|
#     answer_array << word.reverse!
#   end
#   return answer_array.join(' ')
# end


# Refactored Solution

def reverse_words(string)
  split_array = string.split(' ')
  answer_array = Array.new

  split_array.each do |word|
    answer_array << word.reverse!
  end
  return answer_array.join(' ')
end


__END__
# Reflection

What concepts did you review or learn in this challenge?

It was more a combination of different things that I had already known and putting them together. After several weeks of using JavaScript I had to go back at my old solutions to knock the rust off.

What is still confusing to you about Ruby?

I did this challenge to help brush up on using enumerators and I think that I am fairly comfortable with Ruby.

What are you going to study to get more prepared for Phase 1?

I am going to start doing more complex enumerations with Ruby and start reading through some of week 0's old work.