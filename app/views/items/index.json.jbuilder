json.array!(@items) do |item|
  json.extract! item, :name, :image
  json.url item_url(item, format: :json)
end
