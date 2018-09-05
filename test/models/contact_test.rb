require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test 'valid contact' do
  	contact = Contact.new
  	assert_not contact.save, "Cannot Save the contact"
  end

  test 'invalid without name' do
  	contact = Contact.new(name: "", phone: "3242342234", title: "ceo", email: "s@s.com")
  	assert_not contact.save, "Cannot Save the contact"

  end

  test 'invalid without email name and phone' do
  	contact = Contact.new( phone: "32423422", title: "ceo", email: "s")
  	assert_not contact.save, "Cannot Save the contact"
  	assert_operator contact.errors.count, :> , 0
    assert contact.errors.messages.include?(:name)
    assert contact.errors.messages[:name].include?("can't be blank")
    assert contact.errors.messages[:email].include?("is invalid")
  end

end
