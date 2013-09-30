json.array!(@seasons) do |season|
  json.extract! season, :period
  json.url season_url(season, format: :json)
end
