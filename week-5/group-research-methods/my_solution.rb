# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.each do |x|
    if x.to_s.include?(thing_to_find)
      answer << x
    end
  end
  p answer
end

def my_hash_finding_method(source, thing_to_find)
  answer = Hash.new
  source.each do |key, value|
    if value == thing_to_find
      answer.store(key, value)
    end
  end
  p answer.keys
end

# Person 2
def my_array_modification_method!(source, thing_to_modify)
    source.collect! do |item|
        if item.is_a? Integer
            item += thing_to_modify
        else item
      end
     end
    return source
end

def my_hash_modification_method!(source, thing_to_modify)
      source.map do |k, v|
       source[k] = v += thing_to_modify
     end
    return source
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
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
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#