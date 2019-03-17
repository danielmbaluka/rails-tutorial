class Vehicle < ApplicationRecord
	validates :registration, presence: true
	has_many :dispatches
end
