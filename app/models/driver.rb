class Driver < ApplicationRecord
	validates :name, presence: true
	has_many :dispatches
end
