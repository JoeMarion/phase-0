# Numbers to English Words


# I worked on this challenge [by myself, with: Peter Wiebe].
# This challenge took me [2.5] hours.


# Pseudocode

DEFINE a method named in_words that takes an integer
  DEFINE a variable text that is equal to an empty array
  DEFINE a variable integer_number equal to the integer argument passed in
  DEFINE a new empty array called array_number
  DEFINE an integer count equal to 0

  WHILE integer_number is greater than zero
    divide the integer number by 1000 and store the remainder in the index equal to count
    integer_number is equal to integer_number divided by 1000
    increment count by 1
  END

  DEFINE a hash with all the unique numbers set as key/value   pairs
  DEFINE an array that will store the words
  DEFINE a method that breaks up the number passed in the     original argument by tens and evaluates and stores them as words in the empty array. (to the hundreds value)
  JOIN  the array together to form the initial word within     the hundreds

  FOR EACH index in the array_number array
    IF index is equal to 1 and not equal to zero then add the thousand string to the text variable
    ELSE IF index is equal to 2 and not equal to zero then add the million string to the text variable
    ELSE IF index is equal to 3 and not equal to zero then add the billion string to the text variable
  END
      RETURN text variable
END

# Initial Solution


# def in_word(number)
#   text = ""

#   integer_number = number
#   array_number = Array.new
#   count = 0

#   while integer_number > 0
#     array_number[count] = integer_number % 1000
#     integer_number = integer_number / 1000
#     count += 1
#   end

#   def convert_text (number)
#         numbers_name = {
#     1 => "one",
#     2 => "two",
#     3 => "three",
#     4 => "four",
#     5 => "five",
#     6 => "six",
#     7 => "seven",
#     8 => "eight",
#     9 => "nine",
#     10 => "ten",
#     11 => "eleven",
#     12 => "twelve",
#     13 => "thirteen",
#     14 => "fourteen",
#     15 => "fifteen",
#     16 => "sixteen",
#     17 => "seventeen",
#     18 => "eighteen",
#     19 => "nineteen",
#     20 => "twenty",
#     30 => "thirty",
#     40 => "forty",
#     50 => "fifty",
#     60 => "sixty",
#     70 => "seventy",
#     80 => "eighty",
#     90 => "ninety",
#     100 => "hundred",
#     1000 => "thousand",
#     1000000 => "million"
#     }

#       word_array = Array.new

#       if numbers_name.has_key?(number)
#         return numbers_name[number]
#       elsif (21..100).include?(number)
#         word_array << numbers_name[number - (number % 10)]
#         word_array << numbers_name[number % 10]
#       elsif (100..1000).include?(number)
#         word_array << numbers_name[number / 100]
#         word_array << "hundred"
#         if numbers_name.has_key?(number - ((number / 100) * 100) - (number % 10))
#           word_array << numbers_name[number - ((number / 100) * 100)]
#         end
#           word_array << numbers_name[number - ((number / 100) * 100) - (number % 10)]
#         word_array << numbers_name[number % 10]
#       end

#       return word_array.join(" ")
#   end

#   array_number.each_with_index do |three_dig_number, index|

#     if index == 1 && three_dig_number != 0
#       text = " thousand " + text
#     elsif index == 2 && three_dig_number != 0
#       text = " million " + text
#     elsif index == 3 && three_dig_number != 0
#       text = " billion " + text
#     end
#     text = convert_text(three_dig_number) + text
#   end

#   text
# end



# |__|__|__|  |__|__|__|  |__|__|__|
#  1  2  3     1  2  3     1  2  3
# one hundred twenty three million, one hundred twenty three thousand, one hundred twenty three


# Refactored Solution

def in_word(number)
  text = ""

  integer_number = number
  array_number = Array.new
  count = 0

  while integer_number > 0
    array_number[count] = integer_number % 1000
    integer_number = integer_number / 1000
    count += 1
  end

  def convert_text (number)
        numbers_name = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
    }

      word_array = Array.new

      if numbers_name.has_key?(number)
        return numbers_name[number]
      elsif (21..100).include?(number)
        word_array << numbers_name[number - (number % 10)]
        word_array << numbers_name[number % 10]
      elsif (100..1000).include?(number)
        word_array << numbers_name[number / 100]
        word_array << "hundred"
        if numbers_name.has_key?(number - ((number / 100) * 100) - (number % 10))
          word_array << numbers_name[number - ((number / 100) * 100)]
        end
          word_array << numbers_name[number - ((number / 100) * 100) - (number % 10)]
        word_array << numbers_name[number % 10]
      end

      return word_array.join(" ")
  end

  array_number.each_with_index do |three_dig_number, index|
    large_numbers = ["", " thousand ", " million ", " billion ", " trillion " ]
    if three_dig_number != 0
      text = large_numbers[index] + text
    end
    text = convert_text(three_dig_number) + text
  end

  text
end

puts in_word(10)

__END__

# Reflection

What concepts did you review in this challenge?

I reviewed using hashes and it helped for this challenge.

What is still confusing to you about Ruby?

It's not neccessarily Ruby, but the psuedocode part is more challenging for me. I like breaking things up more broadly, and working with snippets of code to see if I was on the right track. I do think once I broaden my knowledge of Ruby, I will be able to break code down and psuedocode easier.

What are you going to study to get more prepared for Phase 1?

I am going to study more on loops before phase 1 because I was starting to get rusty even though it has only been a couple weeks since we started JavaScript over Ruby.