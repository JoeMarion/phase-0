#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData

end


class Greetings

end


__END__
# Reflection

#What are these methods doing?

The beginning methods are just setting up the program as standard, then there are methods that are setters who are allowing the instance variables to be changed altering the entire class.

#How are they modifying or returning the value of instance variables?

They are using setters to change the value of the variables. By using the equal sign before taking the argument they are able to take the arg and change the intance variable assosiated with it.


#What changed between the last release and this release?

An attr_reader was used for age and the method what_is_age was removed.

#What was replaced?

an attr_reader.

#Is this code simpler than the last?

Yes. It allows the user to use the variable age instead of creating a new method for it. The reader does not let the user change the variable.

#What changed between the last release and this release?

the method change_my_age was removed and an attr_writer was added.

#What was replaced?

A method with a setter.

#Is this code simpler than the last?

Yes, because this would allow you to change the instance variable of age without having to create a new method.

#What is a reader method?

A reader method allows you to read the value of an instance variable outside of the class but not change it.

#What is a writer method?

A writer method allows you to change an instance variable outside of class but not view it.

#What do the attr methods do for you?

attr methods allow you to use information within your class on larger scopes yet restrict the way the data is manipulated. Instead of using global variables for everything you can determine exactly what each part of the program will see and be able to write to.

#Should you always use an accessor to cover your bases? Why or Why not?

No, because it can lead to problems debugging later on because of conflicts between classes and other parts of the program. It could also make your program more prone to giving unneccesary data to other parts of the program causing more problems.

#What is confusing to you about these methods?

Not much. They seem to be easy and useful for the future.