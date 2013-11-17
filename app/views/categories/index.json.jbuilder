json.array!(@categories) do |category|
  json.extract! category, :title, :string
  json.url category_url(category, format: :json)
end
