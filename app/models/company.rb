class Company < ApplicationRecord
	has_many :notes, as: :notable
end
