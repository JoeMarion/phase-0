# Name greeter

puts 'Hello, what is your first name?'
first_name = gets.chomp
puts 'Thank you! What is your middle name?'
mid_name = gets.chomp
puts 'Lastly, what is your last name?'
last_name = gets.chomp

full_name = first_name + ' ' + mid_name + ' ' + last_name

puts "Greetings #{full_name}!"

# Bigger, better, number

puts full_name + ', what is your favorite number?'
fav_num = gets.chomp
puts "That is a good number.. but don't you think that #{fav_num.to_i + 1} is a much bigger, better number?"

__END__

How do you define a local variable?

  You define a local variable within the scope of the method (or class, etc) that you are using it within.

How do you define a method?

  A method is defined with:
    def method_name(params_if_any)
      Optional body goes here
    end

What is the difference between a local variable and a method?

  A local variable is a variable that is assigned withing the local scope. A local variable cannot be used outside of its block of code. A method is a block of code that can accept parameters to run execute that is pre-established. Local variables can be assigned within methods.

How do you run a ruby program from the command line?

  With the command "ruby filename.rb" as long as you are within the correct directory.

How do you run an RSpec file from the command line?

  rspec filename_spec.rb as long as you are within the correct directory.

What was confusing about this material? What made sense?

  This challenge helped me understand rspec a little better. Most of this challenge was review, but working with rpsec was interesting to see how debugging ruby works.