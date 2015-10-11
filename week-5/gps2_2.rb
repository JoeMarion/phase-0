=begin
Pseudocode:

Decided a hash to store the list

DEF a method that creates an empty hash
  This methods creates a  "Hash.new"

DEF a method that took two arguments, one that was the item name and the other the value
Our inputs will be a string and integer
In order to add key and value where key will be the string/grocery item name and value will be "integer"/quantity


DEF a method that would remove an existing item on the hash
Only have to remove key from our hash, we can use the remove method here


DEF a method that updates the items quantity within the hash
Being able to update/change the value to a key.


DEF a method that will neatly print the hash into an organized list
Can use concatenate all the items to print out
=end



def new_list
  Hash.new
end

def add_item(item, value, listname)
  listname[item] = value
end

def remove_item(item, listname)
  listname.delete(item)
end

def update_items(item, value, listname)
  listname.update(item => value) if listname[item] != nil
  #Only updates existing keys and value
  #Prevents updating key and values that don't already exist
end

def print_list(listname)
  listname.each do |key, value|
    puts "#{key}: #{value}"
  end
end

__END__

What did you learn about pseudocode from working on this challenge?

I learned that when translating from pseudocode you may not use exactly what you thought you would use and that it's okay to deviate a little.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Arrays are indexed chronologically, while hashes are indexed with unique keys. So in this challenge it helped using hashes because if we were to have a list with thousands of items on it, it would be difficult to use a chronolically indexed system because you would have to remember what number each item was put in. With a hash it doesn't matter how many items on the list because there will only be one key-value pair.

What does a method return?

A method returns the last successfully executed line in its block of code, or anything explicitly asked to return.

What kind of things can you pass into methods as arguments?

You can pass any object into a method argument.

How can you pass information between methods?

You can nest methods within other methods.

What concepts were solidified in this challenge, and what concepts are still confusing?

Using methods with hashes were solidified for me during this challenge. For example, if you were to create a new hash using the method above, you can set a variable equal to the method with no argument. (new_hash = new_list) would create a new hash and set it to the value of new_hash.