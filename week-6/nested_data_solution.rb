# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

puts array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

puts hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

puts nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |i|
  if i.kind_of?(Array)
    i.each {|inner| puts inner + 5}
  else
    puts i + 5
  end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |main|
  if main.kind_of?(Array)
    main.each do |element|
      if element.kind_of?(Array)
        element.each {|element| puts element + "ly"}
      else
        puts element + "ly"
      end
    end
  else
    puts main + "ly"
  end
end

__END__

What are some general rules you can apply to nested arrays?
What are some ways you can iterate over nested arrays?
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?