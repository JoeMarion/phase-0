# Class Warfare, Validate a Credit Card Number

=begin
Pseudocode

# Input: credit card number
# Output: true or false to check the validity of a credit card or an ArgError
# Steps:
1. Double every number at an even index.
2. Join all the numbers together to make one number
3. Split the number at every digit
4. Add all the numbers together to make one number
5. If number modulus 10 equals 0 than it is valid

=end

# Initial Solution


# class CreditCard
#   def initialize(card)
#     @card = card
#     return raise ArgumentError.new("Card number must have 16 digits") if card.to_s.length != 16
#   end

#   def check_card
#     @card_digits = Array.new
#     @new_array = Array.new
#     @card_digits = @card.to_s.split('')
#     @card_digits.each_with_index do |digit, index|
#       if index.even?
#         @new_array << digit.to_i * 2
#       else
#         @new_array << digit
#       end
#     end


#     sum = 0
#     @split_digits = @new_array.join.split('')
#     @split_digits.map! { |i| i.to_i }
#     @split_digits.each {|i| sum += i}

#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end

# end





# Refactored Solution

class CreditCard
  def initialize(card)
    @card = card
    return raise ArgumentError.new("Card number must have 16 digits") if card.to_s.length != 16
  end

  def check_card
    new_array = Array.new
    card_digits = @card.to_s.split('').to_a.each_with_index do |digit, index|
      index.even? ? (new_array << digit.to_i * 2) : new_array << digit
    end

    sum = 0
    split_digits = new_array.join.split('').map! { |i| i.to_i }
    split_digits.each {|i| sum += i}

    sum % 10 == 0
  end
end

# Test Code
card = 4563960122001999
new_class = CreditCard.new(card)
new_class.check_card

__END__

What was the most difficult part of this challenge for you and your pair?

Researching the methods to make our Pseudocode work. We used a different way than what was suggested which we feel was fairly easy to complete this assignment. It was a matter of using good Pseudocode and translating it this time.

What new methods did you find to help you when you refactored?

each_with_index was a new method for me and it proved very helpful in this exercise where we wanted to target only the even number indexes to double.

What concepts or learnings were you able to solidify in this challenge?

Working with arrays has definitely improved from this challenge. Using the .map and split/join methods better helped me understand what the array was doing and how to do it.