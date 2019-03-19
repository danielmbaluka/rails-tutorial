class Expense < ApplicationRecord
	belongs_to :vehicle
	belongs_to :vendor
	belongs_to :driver, optional: true
	belongs_to :expense_category

	validates :date, presence: true
	validates :amount, presence: true
end
