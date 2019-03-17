class ReportsController < ApplicationController

	def home
	end

	def vehicle_performance
		@vehicles = Vehicle.all
	end
	
end