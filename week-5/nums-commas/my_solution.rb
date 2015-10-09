# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin
# What is the input?
The input is the number you want to add commas to

# What is the output? (i.e. What should the code return?)
The output is the input with commas added
# What are the steps needed to solve the problem?
Create a method that takes an integer
Store the length of the int
Create an array that stores every third digit
Add the arrays with comma

=end

# 1. Initial Solution

# def seperate_comma(number)
#   number_length = number.to_s.length.to_i
#   if number_length <=3
#     return number
#   else
#     number_a = number.to_s.split('')
#     rev_answer = number_a.reverse
#     answer = Array.new
#     i = 0
#     while i <= number_length
#       if (i % 3 == 0) && (i != 0)
#         answer << (rev_answer[i] + ",")
#       else
#         answer << rev_answer[i]
#       end
#       i += 1
#     end
#   end


# end

# p seperate_comma(1000)

# def seperate_comma(number)
#   number_a = number.to_s.split('')
#   number_length = number_a.size

#   if number_length <= 3
#     return number

#   elsif number_length % 3 == 0
#     comma = -4
#     (number_length.to_i-1).times do |i|
#       number_a.insert(comma, ',')
#       comma -= 1
#     end
#     puts number_a.join("")
#   else
#     comma = -4
#     number_length.to_i.times do |i|
#       number_a.insert(comma, ",")
#       comma -= 1
#     end
#     p number_a.join("")
#   end
# end

# seperate_comma(100000000)

def seperate_comma(number)
  number_a = number.to_s.split('')
    number_length = number_a.size
    if number_a.size < 4
      p number.to_s
    elsif number_a.size % 3 == 0
      n = -4
      (number_length.to_i-1) / 3 .times do |i|
        number_a.insert(n, ',')
        n -= 4
      end
      p number_a.join("")
    else
        n = -4
      (number_length / 3).to_i.times do |i|
        number_a.insert(n, ',')
        n -= 4
      end
    p number_a.join("")
  end
end

seperate_comma(100000000000)