class Vehicle < ApplicationRecord
	validates :registration, presence: true
end
