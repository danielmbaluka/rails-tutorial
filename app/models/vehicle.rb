class Vehicle < ApplicationRecord
	validates :registration, presence: true
	has_many :dispatches
	has_many :expenses

	def dispatches_revenue
		revenue = 0
		self.dispatches.each do |dispatch|
			revenue = revenue + dispatch.amount unless dispatch.amount.nil?
		end

		revenue
	end

	def total_expenses
		expenses = 0
		self.expenses.each do |expense|
			expenses = expenses + expense.amount unless expense.amount.nil?
		end

		expenses
	end

	def net_profit
		self.dispatches_revenue - self.total_expenses
	end

end
