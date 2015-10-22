=begin
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

Things to get done:
Create variables that establish B, I, N, G, O that holds an array that corresponds with the board.
Create a variable to split BINGO into a separate array.
Create a variable that generates a random number 1-100
Create a variable that generates a random number 0-4 to randomize the letters.

During the check method:

create letters as array
iterate over letters and inner array to create the individual letters with their appropriate number
create a hash that will help access the index of the generated letter to check the correct column for the specific number
destructively iterate through array of specific letter (done with the index number of the hash) to check if the generated number is contained within the letters array.

inverse the board back to normal and print it to display the appropriate board for the user.




# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
def call
  bing = ["B", "I", "N", "G", "O"]
  gen_letter = bing[rand(0..4)]
  gen_num = rand(1..100)
  gen_answer = gen_letter + gen_num.to_s
end

# Check the called column for the number called.
def check
  B = Array.new
  I = Array.new
  N = Array.new
  G = Array.new
  O = Array.new

  bingo_board.each do |row|
    row.each_with_index do |digit, index|
      if index == 0
        B << digit
      elsif index == 1
        I << digit
      elsif index == 2
        N << digit
      elsif index == 3
        G << digit
      else
        O << digit
      end
    end
  end


# If the number is in the column, replace with an 'x'

  bing_hash = Hash[@bing.map.with_index.to_a]

    bingo[bing_hash[@gen_letter]].map! do |i|
      if i == @gen_num
        "X"
      else
        i
      end

    end

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  i = 0
  while i < 5
    p bingo.map { |n| n[i]}
    i += 1
  end
=end

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @bing = ["B", "I", "N", "G", "O"]
#     @gen_letter = @bing[rand(0..4)]
#     @gen_num = rand(1..100)
#     @gen_answer = @gen_letter + @gen_num.to_s
#     puts @gen_answer
#   end

#   def check
#     b = Array.new
#     i = Array.new
#     n = Array.new
#     g = Array.new
#     o = Array.new
#     bingo = [b, i, n, g, o]

#     @bingo_board.each do |row|
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

#     bing_hash = Hash[@bing.map.with_index.to_a]

#     bingo[bing_hash[@gen_letter]].map! do |i|
#       if i == @gen_num
#         "X"
#       else
#         i
#       end

#     end

#     i = 0
#     while i < 5
#       p bingo.map { |n| n[i]}
#       i += 1
#     end
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bing = ["B", "I", "N", "G", "O"]
    @gen_letter = @bing[rand(0..4)]
    @gen_num = rand(1..100)
    @gen_answer = @gen_letter + @gen_num.to_s
    puts @gen_answer
  end

  def check
    bingo = [b = [], i = [], n = [], g = [], o = []] # creates bingo array that will store 5 arrays of numbers with their matching column

    @bingo_board.each do |row|
      row.each_with_index {|digit, index| bingo[index] << digit} # places the digit into the array that matches its letter
    end

    bing_hash = Hash[@bing.map.with_index.to_a] # creates a hash that corresponds each letter with an index value (i.e bing_hash["I"] = 1)

    bingo[bing_hash[@gen_letter]].map! do |i| # compares @gen_num only to the @gen_letter's column only and replaces if applicable
      i == @gen_num ? "X" : i
    end

    i = 0
    while i < 5 # prints bingo board back in the correct order
      p bingo.map { |n| n[i]}
      i += 1
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check


__END__
#Reflection

#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I changed my pseudocoding style a little and showed me that depending how I am thinking different styles may work better for different situations. This time it helped me by listing things that I felt needed to get done and I was able to compare then nearly side by side while I completed this challenge. There are other times where I don't think this would work so well, but it is good for me to know that sometimes it is easier to break things down in different ways.

#What are the benefits of using a class for this challenge?

You can use this on multiple boards and all the methods are contained within the class. You can have multiple boards that were created with this class that won't interere with the same generated variables.

#How can you access coordinates in a nested array?

You can select specific values through nested arrays by using their indexes within the index i.e. array[1][3] would get the fourth value in the second array. If you wanted to find out what index number a value was at, I created a hash that converted the array into it with the value as each index.

#What methods did you use to access and modify the array?

I used a lot of each_with_index, each, and map!, and map. These enumerators were all helpful because they have slightly different purposes and combining them really helped solve this problem and solidify the differences.

#How did you determine what should be an instance variable versus a local variable?

If I was going to use the variable accross the different methods, I would use an instance variable. If I wanted the variable to be contained within just the specific method I would create a local variable.

#What do you feel is most improved in your refactored solution?

My ability to refactor. After I was done I was a little weary to refactor, but after looking at portions of my code I realized that if I just thought about what my code was doing, I could loop through and take away the repetitiveness.