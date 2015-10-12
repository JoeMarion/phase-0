<<<<<<< HEAD
# Pseudocode:
# Create a method that takes two arguments, one an array with the cohort, the other the preferred size of the groups
# Shuffle the cohort array so that the output will always be random
# Set some counters to be able to reference within the code (A first and last counter for a range and a groupnumber counter)
# Create a new empty hash
# Loop through cohort to create each group within a hash
# Make sure that while iterating the counters increase by the wanted size of the group
# Use flow control to make sure that there are not able to have groups of 2 or less




cohort = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Alex Botsford", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Celeste Carter", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeffrey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]





def account_group(cohort, size) #accepts two arguments, an array and the preferred size of group
  cohort.shuffle!

  first = 0
  last = size - 1
  group_num = 1
  final_group = Hash.new
    while first < cohort.length
      people = cohort[first..last].join(", ") #creates variable with list of people per group
      final_group["Accountability Group #{group_num}: "] = people #adds group of people array to the hash
      first += size
      last += size
      group_num += 1
    end

  last_people = people.split(', ') #takes last people in the while loop to ensure they are placed in a group of 3+
  if last_people.length == 2 #if there are only 2 people left they can't make a group so they are added to two seperate groups
    final_group["Accountability Group #{group_num - 2}: "] << ", #{last_people[0]}"
    final_group["Accountability Group #{group_num - 3}: "] << ", #{last_people[1]}"
    final_group.delete("Accountability Group #{group_num - 1}: ") #deletes last accountability group because the people were added to separate groups
    final_group.each do |key, value|
      puts "#{key}: #{value}"
    end
  elsif last_people.length == 1
    final_group["Accountability Group #{group_num - 2}: "] << ", #{last_people[0]}"
    final_group.delete("Accountability Group #{group_num - 1}: ")
    final_group.each do |key, value|
      puts "#{key}: #{value}"
    end
  else
    final_group.each do |key, value|
      puts "#{key}: #{value}"
    end
  end


end

account_group(cohort, 5)
=======
#  Pseudocode:

# Create an array of all the people in the cohort
# Take the length of the array and divide it by 5 to find out how many accountability groups there needs to be
# Create a new array for how many groups there are going to be
# for each array assign 5 people based on a randomized index from the array and remove them from the origial array
# assign remaining people into last array

# create a hash with |accountability group number, array of people in it |



cohort = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Alex Botsford", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Celeste Carter", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeffrey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

>>>>>>> master
