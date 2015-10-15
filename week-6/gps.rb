# Your Names
# 1) Joe Marion
# 2) Nicole Yee

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.


def serving_size_calc()
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  puts "What would you like to make?"
  item_to_make = gets.chomp!.downcase
  puts "How much dough do you have?"
  order_quantity = gets.chomp!.to_i

  if library.has_key?(item_to_make)

    serving_size = library[item_to_make]
    leftovers = order_quantity % serving_size

    if leftovers == 0
      puts "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}(s)!"
    elsif leftovers > 4
      s_leftovers = leftovers - 5
      print "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}(s), you have #{leftovers} leftover ingredients. Suggested baking items: A cake"
      if s_leftovers > 0
        print " and #{s_leftovers} cookie(s)!"
      end
    else
      puts "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}(s), you have #{leftovers} leftover ingredients. Suggested baking items: #{leftovers} cookie(s)!"
    end


  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


end

serving_size_calc

__END__

#  Reflection

What did you learn about making code readable by working on this challenge?

I learned that sometimes when code works, it may not neccessarily be the best choice. We could have used a case statement, but using an If else statement made it more readable.

Did you learn any new methods? What did you learn about them?

I learned about the values_at()[0]. It stores the value of the has as an array and that is why it needs the [0] at the end. This helped me learn more about how hashes and arrays work more.

What did you learn about accessing data in hashes?

I learned that there are a lot of different ways you can access data in a hash. There are a lot of ways you can use that data too.

What concepts were solidified when working through this challenge?

Getting user input and comparing it to the value of hashes is more solid than they were before the challenge. Using it in a practical application helped.