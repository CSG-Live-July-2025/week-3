# Inheritance

# class Vehicle
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end

#   def info
#     return "Vehicle make: #{@make}, model: #{@model}"
#   end
# end

# class Car < Vehicle
#   def number_of_wheels
#     return 4
#   end
# end

# class Motorcycle < Vehicle
#   def number_of_wheels
#     return 2
#   end
# end

# car = Car.new("Jeep", "Wrangler")
# p car.number_of_wheels
# p car.info

# motorcycle = Motorcycle.new("Harley", "Roadster")
# p motorcycle.number_of_wheels
# p motorcycle.info


# Exercise:
# Task: Create a Person superclass and Student and Teacher subclasses.
# Instructions:
# Define a Person class with attributes name and age, and a method introduce.
# Create Student and Teacher classes that inherit from Person.
# Add a grade attribute to Student and a subject attribute to Teacher.
# Instantiate objects from both subclasses and call their methods.
# Hint: You might need to create individual initialize methods for each class 

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    return "Hafa Adai, my name is #{@name} and I'm #{@age} years old."
  end
end


class Student < Person
  def initialize(name, age, grade)
    super(name, age)
    @grade = grade
  end
  
  def introduce
    super + " And I'm grade #{@grade}."
  end
end

class Teacher < Person
  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end
  
  def introduce
    super + " And I teach #{@subject}."
  end
end

# person = Person.new("Lanna", 23)
# p person.introduce
# student = Student.new("Junior", 26, 12)
# p student.introduce
# teacher = Teacher.new("Ron", 26, "Computer Science")
# p teacher.introduce




# Polymorphism



# method overwriting

# class Shape
#   def draw
#     return "Drawing a shape..."
#   end
# end

# class Circle < Shape
#   def draw
#     return "Drawing a circle." 
#   end
# end

# class Square < Shape
#   def draw
#     return "Drawing a square."
#   end
# end

# shapes = [Circle.new, Square.new, Shape.new]

# shapes.each do |shape|
#   p shape.draw
# end




# class Person
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def introduce
#     return "This is #{@name} and they're #{@age} years old."
#   end
# end

# p1 = Person.new("Ed", 4)
# p p1.introduce

# p2 = Person.new("Alanna", 23)
# p p2.introduce






