class Contact < ActiveRecord::Base
	self.inheritance_column = nil
	validates :name,:phone, presence: true
	validates :email, email: true
	validates :phone,:numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
end
