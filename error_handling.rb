# syntax errors
  # aren't following ruby's syntax rules (ex. not putting an end)
  # detected before the program runs

# runtime exceptions
  # occurs when the program is running
  # caused by unexpected events (ex. dividing by 0 or accessing something that does not exist)


# puts "Hello"

# # def greet
# #   puts "Hello"
# # # end

# something

# puts "Hello again"



# begin, rescue, and ensure

def divide_numbers(a, b)
  begin
    result = a / b 
  rescue ZeroDivisionError
    puts "Error: You cannot divide by 0"
    # result = nil
  rescue NameError
    puts "Error: Both arguments must be numbers"
    # result = nil
  rescue
    puts "Error: Not sure what exactly happened but it failed"
    # result = nil
  ensure
    puts "Division attempt completed"
  end

  return result
end

begin 
  p divide_numbers(10)
  puts "--------"
  p divide_numbers("test", "test")
  puts "--------"
  p divide_numbers(10, 2)
  puts "--------"
  p divide_numbers(10, false)
rescue ArgumentError
  puts "you must have 2 arguments"
end



# raise 

# def check_age(age)
#   if age < 0
#     raise "Age cannot be negative"
#   else
#     puts "You are #{age} years old"
#   end
# end


# begin
#   check_age(-5)
# rescue => error
#   puts "An error occurred: #{error}"
# end



# Activity:
# Task: Validate user input with raise.
# Instructions:
# Write a method that asks the user for a word.
# Use raise to check if the input is shorter than 3 characters.
# Use rescue to handle the exception and prompt the user again.

# def long_words(input)
#   # puts "Please enter a word:"
#   # input = gets.chomp

#   if input.length < 3
#     raise "Your word is too short"
#   else
#     puts "Solid, that's longer than 3 characters.."
#   end
# end

# begin
#   long_words("word")
# rescue => error
#   puts "Error: #{error}"
#   puts "Try again..."
#   long_words
# end



