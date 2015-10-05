# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
    return false

  elsif a + b < c
    return false

  elsif a + c < b
    return false

  elsif b + c < a
    return false
  else
    return true
  end
end