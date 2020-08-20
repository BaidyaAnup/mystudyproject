class Employee < ApplicationRecord
	has_many :notes, as: :notable
end
