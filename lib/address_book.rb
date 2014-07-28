class Contact

  def initialize(contact_info)
    @first_name = contact_info[0]
    @last_name = contact_info[1]
    @phone = contact_info[2]
    @email = contact_info[3]
    @address = contact_info[4]
  end

  def first_name
    @first_name
  end

  def save
    @@all_contacts << self
  end

  def address_key
    @first_name[0] + " " + @last_name
  end

  def info
    info_index = ["Name: #{@first_name} #{@last_name}","Phone: #{@phone}","Email: #{@email}","Address: #{@address}"]
  end
end
