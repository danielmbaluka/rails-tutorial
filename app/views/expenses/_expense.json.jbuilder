json.extract! expense, :id, :date, :vendor_id, :category_id, :vehicle_id, :driver, :amount, :description, :created_at, :updated_at
json.url expense_url(expense, format: :json)
