# module 
  # namespacing - preventing name collisions 
  # mixin - add shared functionality to classes without using inheritance

# module MathConstants
#   PI = 3.14159
#   E = 2.71828  
# end

# puts MathConstants::PI
# puts MathConstants::E


# module PDFTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} as a PDF"
#     end
#   end
# end


# module NetworkTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} over the network"
#     end
#   end
# end

# pdf_printer = PDFTools::Printer.new
# network_tools = NetworkTools::Printer.new

# pdf_printer.print_file("document.txt")
# network_tools.print_file("document.txt")



# module Mammals
#   class Animal
#     def speak
#       "I am a mammal."
#     end
#   end
# end

# module Birds
#   class Animal
#     def speak
#       "I am a bird."
#     end
#   end
# end

# mammal = Mammals::Animal.new
# bird = Birds::Animal.new

# puts mammal.speak
# puts bird.speak


# Mixins

# module Greetable
#   def greet
#     return "Hafa Adai"
#   end
# end


# class Person
#   include Greetable
# end

# person = Person.new
# p person.greet


# module Loggable
#   def log(message)
#     puts "[LOG #{Time.now}] #{message}"
#   end
# end

# class Person
#   include Loggable

#   def initialize(name)
#     @name = name

#     log("New Person created with name #{name}")
#   end
# end

# # person = Person.new("Matt")


# class Robot
#   include Loggable

#   def initialize(model)
#     @model = model

#     log("New Robot assembled: Model #{@model}")
#   end
# end

# robot = Robot.new("Tesla Robot")

module Driveable
  def drive(message)
    puts "-------"
    p self
    puts "-------"
    
    puts "Driving the #{self.class}! #{message}"
  end
end

class Car
  include Driveable

  def initialize(model)
    @model = model

    drive("some message from car")
  end
end

class Motorcycle
  include Driveable

  def initialize(name)
    @name = name
  
    drive("some message from motorcycle")
  end
end

car = Car.new("Toyota")
motorcycle = Motorcycle.new("harley")

# puts car.drive
# puts motorcycle.drive


# class Book
#   attr_accessor :title, :author, :pages_read

#   def initialize(title, author)
#     @title = title
#     @pages_read = 0
#     @author = author
#   end

#   def read(pages)
#     @pages_read += pages
#     puts "You have read #{pages} pages of '#{title}'."
#   end
# end

# books = []

# loop do
#   puts "\nBook Manager"
#   puts "1. Add a new book"
#   puts "2. List all books"
#   puts "3. Read pages"
#   puts "4. Exit"
#   print "Enter your choice: "
#   choice = gets.chomp

#   case choice
#   when "1"
#     print "Enter the title of the book: "
#     title = gets.chomp
#     print "Enter the author of the book: "
#     author = gets.chomp
#     books << Book.new(title, author)
#     puts "Book added!"
#   when "2"
#     puts "\nBooks in your collection:"
#     books.each_with_index do |book, index|
#       puts "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"
#     end
#   when "3"
#     if books.empty?
#       puts "No books available. Please add a book first."
#     else
#       puts "\nSelect a book to read:"
#       books.each_with_index do |book, index|
#         puts "#{index + 1}. #{book.title}"
#       end
#       print "Enter the number of the book: "
#       book_number = gets.chomp.to_i
#       if book_number.between?(1, books.length)
#         print "How many pages did you read? "
#         pages = gets.chomp.to_i
#         books[book_number - 1].read(pages)
#       else
#         puts "Invalid book number."
#       end
#     end
#   when "4"
#     puts "Goodbye!"
#     break
#   else
#     puts "Invalid choice. Please try again."
#   end
# end
