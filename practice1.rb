contacts = []

def display_menu
  puts "\nAddress Book Menu:"
  puts "1. Add a contact"
  puts "2. View all contacts"
  puts "3. Search for a contact"
  puts "4. Exit"
  print "Enter your choice: "
end

loop do
  display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter name: "
    name = gets.chomp
    print "Enter phone number: "
    phone = gets.chomp
    print "Enter email: "
    email = gets.chomp

    contacts << { name: name, phone: phone, email: email }
    puts "Contact added."

  when 2
    if contacts.empty?
      puts "No contacts found."
    else
      contacts.each do |contact|
        puts "\nName: #{contact[:name]}"
        puts "Phone: #{contact[:phone]}"
        puts "Email: #{contact[:email]}"
      end
    end

  when 3
    print "Enter the name of the contact to search: "
    search_name = gets.chomp
    found = contacts.find { |contact| contact[:name].downcase == search_name.downcase }

    if found
      puts "\nContact Found:"
      puts "Name: #{found[:name]}"
      puts "Phone: #{found[:phone]}"
      puts "Email: #{found[:email]}"
    else
      puts "Contact not found."
    end

  when 4
    puts "Goodbye!"
    break

  else
    puts "Invalid choice. Please try again."
  end
end

