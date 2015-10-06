# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  answer = []
  i = 0
  j = 0

  while i < array_1.length
    answer << array_1[i]
    i += 1
  end

  while j < array_2.length
    answer << array_2[j]
    j += 1
  end
  return answer

end