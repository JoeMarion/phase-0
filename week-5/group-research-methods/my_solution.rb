# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Jeremy Powell

# input: array and letter/string argument
# output:new array of words that contain letter
# steps: check each word to see if it contains the 2nd param that we pass through the method (thing_to_find),
# if the array value contains that letter then add/push to answer array, print answer array
# I checked ruby docs and found method in array that looked like it would work (.include?).
# I ran into an error because it does not work on fixnum values, so I added .to_s when iterating through each value in the array.

def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.each do |x|
    if x.to_s.include?(thing_to_find)
      answer << x
    end
  end
  p answer
end

# input: source hash and thing_to_find integer.
# output: hash of keys matching the thing_to_find(integer)
# steps: check each pair value for the number in thing_to_find, add key to answer hash if value matches, return keys only from answer hash.
# I looped through all the value pairs and found the .store method on ruby docs as a simple way to keep the pair. I had to look back on ruby docs for the .keys method to only output the keys

def my_hash_finding_method(source, thing_to_find)
  answer = Hash.new
  source.each do |key, value|
    if value == thing_to_find
      answer.store(key, value)
    end
  end
  p answer.keys
end

# Person 2 - Gabrielle Gustillo

# pseudocode:
    # iterate through the array
    # if array item is a number,
        # add thing_to_modify to the number
    # else, leave the item alone
    # return the array(?)


def my_array_modification_method!(source, thing_to_modify)
    source.collect! do |item|
        if item.is_a? Integer
            item += thing_to_modify
        else item
      end
     end
    return source
end

# pseudocode:
    # iterate through the hash
    # add thing_to_modify to each hash value
    # return the hash

def my_hash_modification_method!(source, thing_to_modify)
      source.map do |k, v|
       source[k] = v += thing_to_modify
     end
    return source
end

# Identify and describe the Ruby method(s) you implemented.
# I tried a bunch of different methods, but only some of them worked.  Take a look below.

# Array methods:
# each : Doesn't work, because it doesn't permanently alter the array - non-destructive
# collect : Doesn't work, because it doesn't permanently alter the array - non-destructive
# collect! : Works - destructively alters the array
# map : Doesn't work, because it doesn't permanently alter the array - non-destructive
# map! : Works - destructively alters the array
#
# Hash methods:
# each : Works - destructively alters the array
# each_value : Doesn't work, because it doesn't permanently alter the array - non-destructive
# values : Doesn't work, because it doesn't permanently alter the array - non-destructive
# map : Works - destructively alters the array


# Person 3 - Joseph Marion
def my_array_sorting_method(source)
  source.sort_by {|value| value.to_s}
end

def my_hash_sorting_method(source)
  source.sort_by {|key, value| value}.to_a
end

# Identify and describe the Ruby method(s) you implemented.
#Originally I tried creating a new array that used the loop .each to loop through each value, turned them to a string and then used teh .sort method before adding it to the new array. The problem with this was the answers ended up as only strings. This got me into looking for an easier way to sort.
#This reminded me of enumerables. I then used the method sort_by and converted the value inside the enumerable as a string so that it wouldn't be permanant.
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
# I used the enumerator .sort_by to sort both the hash and the array.
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I used the .sort_by enumerator. It takes a block of code (For this case it the array was {|value| value.to_s} where value was the enumerator and had it sorted by just the value of each array as a string.
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# It was similar to working within pairs. Explaining to groups is different because the explanation has to be a little more broad to help more than one person understand it.
#
#