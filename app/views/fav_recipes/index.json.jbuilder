json.array!(@fav_recipes) do |fav_recipe|
  json.extract! fav_recipe, :recipe_id
  json.url fav_recipe_url(fav_recipe, format: :json)
end
