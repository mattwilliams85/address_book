require ('./lib/address_book')
@list = []

def menu
  puts "[== ADDRESS-BOOK ==]"
  loop do
    puts "\n"
    puts "Press 'a' to add a new contact, 'c' to see all contacts, or 'x' to exit"
    main_entry = gets.chomp
    if main_entry == "a"
      add_contact
    elsif main_entry == "c"
      list_contacts
    elsif main_entry == "x"
      puts "Goodbye!"
      exit
    else
      puts "That is not a valid entry, please retry"
    end
  end
end

def add_contact
  puts "\n"
  puts "Please enter your the first name of your contact:"
  first_name = gets.chomp
  puts "Please enter their last name:"
  last_name = gets.chomp
  puts "Please enter their phone number:"
  phone = gets.chomp
  puts "Please enter their email address:"
  email = gets.chomp
  puts "Please enter their mailing address in one line:"
  address = gets.chomp
  puts first_name + " " + last_name + " added to address book."
  new_contact = [first_name, last_name, phone, email, address]
  @list << Contact.new(new_contact)
end

def list_contacts
  loop do
    keyArray = []
    counter = 0
    puts "\n"
    puts "|| CONTACTS ||"
    @list.each do |contact|
      puts contact.address_key
      keyArray << [contact.address_key, contact.info]
    end
    puts "\n"
    puts "Please type the name of the contact as listed for more info"
    puts "or press 'x' to go back to the main menu:"
    key_entry = gets.chomp

    keyArray.each do |item|
      if  key_entry == item[0]
        puts "\n"
        puts item[1]
      elsif key_entry == "x"
        menu
      end
    end
    puts "\n"
    puts "Press any key to continue..."
    continue = gets.chop
  end
end

menu
