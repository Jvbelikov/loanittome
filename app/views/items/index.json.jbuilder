json.array!(@items) do |item|
  json.extract! item, :title, :description, :text, :price_per_day
  json.url item_url(item, format: :json)
end
