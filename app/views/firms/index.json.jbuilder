json.array!(@firms) do |firm|
  json.extract! firm, :id, :name, :category, :description, :address, :user_id
  json.url firm_url(firm, format: :json)
end
