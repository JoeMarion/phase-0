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





__END__
# Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?



When should you use instance variables? What do they do for you?

Instance variables allow you to use them outside of the scope of a method. So within a class you can use an instance variable for the instance the class is initialized. This lets you use them in multiple methods accross the whole class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control helps give alternatives to the code. So that instead of following one path, it can evaluate actions and determine a more appropriate action to take place. Most commonly with the if else statement. If one this happens.. do this... else do this. It is a fork in the road that allows for variety.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  I think that because symbols can return different values, we used symbols so that its not returning the value of low, high, etc, as a string. Instead it wants to print those, but return a value behind the scenes to help process it later.