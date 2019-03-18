class Expense < ApplicationRecord
	belongs_to :vehicle
	belongs_to :driver, optional: true

	validates :date, presence: true
	validates :amount, presence: true
end
