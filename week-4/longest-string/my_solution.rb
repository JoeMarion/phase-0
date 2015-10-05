# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  i = 0

  while i < list_of_words.length
    if i == 0
      longest_word = list_of_words[0]
    elsif list_of_words[i].length > longest_word.length
      longest_word = list_of_words[i]
    end
    i += 1
  end
  return longest_word

end