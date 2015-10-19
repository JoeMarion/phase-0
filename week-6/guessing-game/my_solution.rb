# Build a simple guessing game

=begin
# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: init: answer, guess: random int
# Output: either the symbols :high, :low, :correct, or :false
# Steps:
1. Init the class, set @answer as a var and make sure there is an answer given
2. DEF two additional methods, solved? and guess()
3. Guess is going to accept one arg and compare it to the @answer
4. Return an answer based on the comparison done previously
5. Within solved? IF the @answer is equal to the guess, then return true, ELSE false.
6. Additional stuff that can be added: a last_guess variable, a last_result variable, possible extra user interface.


=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(user_guess)
    @last_guess = user_guess
    if user_guess > @answer
      return :high
    elsif user_guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @last_guess == @answer
      return true
    else
      return false
    end
  end

  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection