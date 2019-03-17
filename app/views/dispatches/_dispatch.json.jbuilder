json.extract! dispatch, :id, :vehicle, :driver, :dispatch_date, :amount, :description, :status, :created_at, :updated_at
json.url dispatch_url(dispatch, format: :json)
