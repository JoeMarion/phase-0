# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  i = 0

  while i < list_of_words.length
    if i == 0
      shortest_word = list_of_words[0]
    elsif list_of_words[i].length < shortest_word.length
      shortest_word = list_of_words[i]
    end
    i += 1
  end
  return shortest_word
end
