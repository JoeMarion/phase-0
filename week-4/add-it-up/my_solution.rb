# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Create method
# Create a while loop that assigns array value to local variable
# Within while add array values to same local variable

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(array)
  i = 0
  answer = 0

  while i < array.length
    answer += array[i]
    i += 1
  end
  return answer
end

# 3. total refactored solution

def total(array)
  i = 0
  answer = 0

  while i < array.length
    answer += array[i]
    i += 1
  end
  return answer
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.

# Make a method

# 5. sentence_maker initial solution

def sentence_maker(words)

  i = 0
  sentence = ''

  while i < words.length
    if i == 0
      sentence = sentence + words[0].to_s.capitalize + ' '
    end
    if i == words.length - 1
      sentence = sentence + words[(words.length - 1)].to_s + '.'
    end
    if (i != words.length - 1) && i != 0
      sentence = sentence + words[i].to_s + ' '
    end
    i += 1
  end
  return sentence
end


