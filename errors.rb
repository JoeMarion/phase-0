# Analyze the Errors

# I worked on this challenge [by myself, with: Bryan Munroe].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 8
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected "=" expecting $end
# 5. Where is the error in the code?
# the " " in between = and cartmans_phrase
# 6. Why did the interpreter give you this error?
# the variable should be written first



south_park = "south"

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
# Name Error
# 4. Where is the error in the code?
#  There needs to be a defined value for the variable
# 5. Why did the interpreter give you this error?
# the interpreter was searching for the = sign



def cartman()
end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
#nomethoderror
# 4. Where is the error in the code?
# there was no defined method
# 5. Why did the interpreter give you this error?
# it was searching for a defined method


def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# wrong number of arguments ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# theres no defined variable
# 5. Why did the interpreter give you this error?
# no arguments specified for cartmans_phrase when the method was first defined


#
# def cartman_says(offensive_message)
#  puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# Argument Errors
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# no argument is passed when calling the method
# 5. Why did the interpreter give you this error?
# see above



#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 104
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of args 1 for 2
# 4. Where is the error in the code?
#  only one argument instead of 2
# 5. Why did the interpreter give you this error?
# the method has 2 arguments and only one is passed


#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 122
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String cannot be coerced into Fixnum
# 4. Where is the error in the code?
# '*'
# 5. Why did the interpreter give you this error?
# the string should come before the multiplication, 5 cannot 'respect' itself


#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 136
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
#the division '/'
# 5. Why did the interpreter give you this error?
# you cant divide by 0



#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#152
# 2. What is the type of error message?
#load error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load file -- /path.
# 4. Where is the error in the code?
# .md should be .rb
# 5. Why did the interpreter give you this error?
# it should be a ruby file


