json.extract! customer, :id, :name, :email, :phone_number, :address, :city, :country, :notes, :status, :created_at, :updated_at
json.url customer_url(customer, format: :json)
