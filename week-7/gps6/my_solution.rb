# Virus Predictor

# I worked on this challenge [by myself, with: Peter].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
##  What does require_relative do?
#  It loads the file named that is relative to the file that contains the require_relative statement

## How does require_relative work?
# It is stating that another file is required to be loaded in conjunction with the current file and that it is located relative to the current file.

## How does it differ from require?
# It differs from require because require is relative to the current directory.require_relative 'state_data'


# #=======================================================================

# Refactored Code

class VirusPredictor

  # Initialization method that takes in 3 arguments, the state_of_origin, population_density, population and setting the instance variables @state, @population, and @population_density to the corresponding arguments.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @dense = [200, 150, 100, 50, 0]
  end

  # virus_effects is a method that calls two methods predicted_deaths and speed_of_spread using the instance variables @population_density, @population, and @state

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicted_deaths takes in 3 arguments: population_density, population, and state and checks the density of the population and sets numbers of deaths to the population times a certain percentage.

  def predicted_deaths
    # predicted deaths is solely based on population density
    percent = [0.4, 0.3, 0.2, 0.1, 0.05]
    number_of_deaths = 0

    @dense.each_with_index do |element, index|
      if @population_density >= element
        number_of_deaths = (@population * percent[index]).floor
      end
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # speed_of_spread takes in 2 arguments: population_density and state and sets the speed variable based on the value in in population_density and then outputs a message of in how many months its going to spread.

  def speed_of_spread #in months
    speed = 0.5
    speed_array = [0.5, 1, 1.5, 2, 2.5]
    i = 0

    until @population_density >= @dense[i]
              speed = speed_array[i+1]
              i += 1
            end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end


def all_infected_states(states_hash)
  states_hash.each do |key, value|
    state = VirusPredictor.new(key, value[:population_density], value[:population])
    state.virus_effects
  end
end


__END__
#=======================================================================
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

Within the initial hash there is a key and value where the value itself is another hash that contains separate key/value pairs. The original sets the value of the key with => and the other as just a colon. Both are equally as acceptable, just separate ways of writing it.

What does require_relative do? How is it different from require?

It loads the file named that is relative to the file that contains the require_relative statement. It differs from require because require is relative to the current directory.require_relative 'state_data'

What are some ways to iterate through a hash?

You can use an .each loop that iterates with a key and value as in hash.each do |key, value| and this will use the key and value of the hash in that order.

When refactoring virus_effects, what stood out to you about the variables, if anything?

The instance variables weren't being used correctly. They didn't need to be arguments for methods later because they were already established when the code was initialized so they could already be accessed.

What concept did you most solidify in this challenge?

Iterating with hashes has definitely improved from this challenge. Plus refactoring is making more sense, which was something I was having trouble with.