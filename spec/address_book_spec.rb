require ('rspec')
require ('address_book')

describe 'AddressBook' do
  it 'initializes inputted contacts' do
    test_book = Contact.new(["Matthew","Williams","206-555-5555","mattfake@aol.com","123 Fake St"])
    test_book.should be_an_instance_of AddressBook
  end
  it 'initializes inputted contacts' do
    test_book = Contact.new(["Matthew","Williams","206-555-5555","mattfake@aol.com","123 Fake St"])
    test_book.should eq AddressBook
  end
end


