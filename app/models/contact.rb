class Contact < ApplicationRecord

	scope :friends, ->{where(type: 'Friend')} #Contact.friends
	scope :emergencies, ->{where(type: 'Emergency')}
end
