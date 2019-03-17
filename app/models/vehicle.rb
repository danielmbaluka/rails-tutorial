class Vehicle < ApplicationRecord
	validates :registration, presence: true
	has_many :dispatches

	def dispatches_revenue
		revenue = 0
		self.dispatches.each do |dispatch|
			revenue = revenue + dispatch.amount unless dispatch.amount.nil?
		end

		revenue
	end

	def expenses
		1250
	end

	def net_profit
		self.dispatches_revenue - self.expenses
	end

end
