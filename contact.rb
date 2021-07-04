class Contact
attr_reader :email
attr_writer :contact
@@contacts= []
@@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

  # This method should call the initializer, 
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
  new_contact = Contact.new(first_name, last_name, email, note)
  @@contacts << new_contact
  @id = @@id
  @@id += 1
  return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |id|
      if id == @id 
        return @@contacts[id]
      end

  end

  # This method should allow you to specify 
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(name_of_attribute, updated_attribute)
    if name_of_attribute == "first name"
      updated_attribute = @first_name
    elsif name_of_attribute == "last name"
      updated_attribute = @last_name
    elsif name_of_attribute == "email"
      updated_attribute = @email
    elsif name_of_attribute == "note"
        updated_attribute = note
    else
        puts "wrong arguments"
    end

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by
    @@contacts.each do |first_name|
      if first_name == @first_name 
        return @@contacts[first_name] # have to fix this method
      end
  end

  # This method should delete all of the contacts
  def self.delete_all
    delete.@@contacts
  end

  def full_name
    @full_name
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    delete.new_contact
  end

  # Feel free to add other methods here, if you need them.
  
end



