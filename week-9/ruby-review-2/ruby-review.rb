# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

# Create CLASS BingoScorer
# Initialize class accepting a bingo card arrays as the arg
# Set bingo_card array as an instance variable

# DEF method to check for horizontal win
# Loop through the board and use the .all? enumerator on each iteration to check if string
# END

# DEF method to check for vertical win
# Create 5 empty arrays, one for each letter in bingo
# Create an array that stores the value of each previous array
# Loop through each row of the bingo card
# Loop through each digit in the row
# Compare the index of the digit and store within appropriate array in b i n g o
# Use the horizontal function on bingo to determine if array is all Strings
# END

# DEF method to check for right to left win
# Create an empty array
# Loop through each row with index
# Push the value of row[index] into the empty array
# IF the value of the array is now all Strings it's a win
# END

# DEF method to check for left to right win
# This is the same as right to left win, but instead of row[index] it needs to be reversed
# END

# DEF a method solver
# run each method with the argument of the @bingo_card to combine each section
# END




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   def initialize(bingo_card)
#     @bingo_card = bingo_card
#   end

#   def solver
#     horizontal(@bingo_card)
#     vertical(@bingo_card)
#     right_to_left(@bingo_card)
#     left_to_right(@bingo_card)
#   end

#   def horizontal(card)
#     card.each do |row|
#       p "BINGO!" if row.all? {|i| i.is_a?(String)}
#     end
#   end

#   def vertical(card)
#     b = []
#     i = []
#     n = []
#     g = []
#     o = []
#     bingo = [b, i, n, g, o]

#     card.each do |row|
#       row.each_with_index do |digit, index|
#         if index == 0
#           b << digit
#         elsif index == 1
#           i << digit
#         elsif index == 2
#           n << digit
#         elsif index == 3
#           g << digit
#         else
#           o << digit
#         end
#       end
#     end
#     return horizontal(bingo)
#   end

#   def right_to_left(card)
#     bingo = []
#     card.each_with_index do |row, index|
#       bingo << row[index]
#     end
#     p "BINGO!" if bingo.all? {|i| i.is_a?(String)}
#   end

#   def left_to_right(card)
#     bingo = []
#     card.each_with_index do |row, index|
#       bingo << row[-index - 1]
#     end
#     p "BINGO!" if bingo.all? {|i| i.is_a?(String)}
#   end
# end




# Refactored Solution

class BingoScorer

  def initialize(bingo_card)
    @bingo_card = bingo_card
  end

  def solver
    p horizontal(@bingo_card) || vertical(@bingo_card) || diagonal(@bingo_card) ? "BINGO!" : "Not a BINGO"
  end

  private

  def horizontal(card)
    card.each do |row|
      row.all? {|i| i.is_a?(String)}
    end
  end

  def vertical(card)
    return horizontal(card.transpose)
  end

  def diagonal(card)
    bingo = []
    bingo2 = []
    card.each_with_index do |row, index|
      bingo << row[index]
      bingo2 << row[-index - 1]
    end
    (bingo.all? {|i| i.is_a?(String)} || bingo2.all? {|i| i.is_a?(String)})
  end
end




# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

game = BingoScorer.new(horizontal)
game.solver

game = BingoScorer.new(vertical)
game.solver

game = BingoScorer.new(right_to_left)
game.solver

game = BingoScorer.new(left_to_right)
game.solver

__END__

# Reflection

# What concepts did you review in this challenge?

I reviewed enumerables with this challenge.

# What is still confusing to you about Ruby?

I am feeling fairly comfortable with Ruby, it's mostly jut learning the built in methods and what Ruby has to offer.

# What are you going to study to get more prepared for Phase 1?

I am going to look up more built-in methods within Ruby to try and verse myself with a wider variety of methods that Ruby has to offer.