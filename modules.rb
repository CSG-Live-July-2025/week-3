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

