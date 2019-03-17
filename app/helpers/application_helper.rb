module ApplicationHelper
	# returns the full title of on a per-page basis
	def full_title(page_title = "")
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	def number_to_local_currency(number, unit = "KES ")
		number_to_currency number, {:unit => unit}
	end
end
