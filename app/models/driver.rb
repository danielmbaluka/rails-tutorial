class Driver < ApplicationRecord
	validates :name, presence: true
	has_many :dispatches
	has_many :expenses
end
