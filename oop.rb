# OOP
# Object Oriented Programming

# Encapsulation
# Abstraction


# class

# name = "Leon"
# puts name.class

# class Car
# end

# my_car = Car.new
# puts my_car.class
# puts my_car


# Exercise:
# Task: Create a new Ruby file called oop.rb and define an empty Person class.
# Instructions:
# Open VSCode and create a new file named oop.rb.
# Define an empty Person class.
# Create an instance of Person and assign it to a variable.
# Print the class of the instance using puts.

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def info_about_user
    return "This is #{@name} and they are #{@age} years old."
  end

  def age_plus_ten
    return age + 10
  end
end

person1 = Person.new("Leon", 26)
p person1.info_about_user
p person1.age_plus_ten

person2 = Person.new("Alanna", 23)
p person2.info_about_user
# p person1.name
# p person1.age
# person1.name = "Kiko"
# person1.age = 27
# p person1.name
# p person1.age
# p person1.get_name
# p person1.get_age
# person1.set_name("Kiko")
# p person1.get_name



# person2 = Person.new
# person2.set_name("Kiko")
# p person2.get_name

# person1.set_name("Adrian")
# puts "testing"
# p person1.get_name

# person2 = Person.new
# person2.set_name("Ron")
# p person2.get_name
