require 'io/console'
require_relative 'menu'
require_relative 'contact'

contacts = [
    Contact.new("Alice Johnson", "123-456-7890", "alice@example.com"  ),
    Contact.new("Bob Smith"    , "234-567-8901", "bob@example.com"    ),
    Contact.new("Charlie Brown", "345-678-9012", "charlie@example.com"),
    Contact.new("Diana Prince" , "456-789-0123", "diana@example.com"  ),
    Contact.new("Edward Cullen", "567-890-1234", "edward@example.com" )
]

menu = Menu.new
menu.display
option = menu.get_option
puts "\n"

case option
when Menu::VIEW
    contacts.each do |contact|
        puts "Name: #{contact.name}"
        puts "Phone Number: #{contact.phone_number}"
        puts "Email: #{contact.email}"
        puts "---------------------------"
    end
when Menu::CREATE
    puts "Creating a new contact..."
when Menu::EDIT
    puts "Editing a contact..."
when Menu::DELETE
    puts "Deleting a contact..."
else
    puts "Invalid option. Please choose a valid number."
end
