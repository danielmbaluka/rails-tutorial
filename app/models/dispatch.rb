class Dispatch < ApplicationRecord
	belongs_to :driver
	belongs_to :vehicle

	validates :dispatch_date, presence: true
	validates :vehicle, presence: true
	validates :driver, presence: true
	validates :amount, presence: true
end
