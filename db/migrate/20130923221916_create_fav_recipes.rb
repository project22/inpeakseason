class CreateFavRecipes < ActiveRecord::Migration
  def change
    create_table :fav_recipes do |t|
      t.string :recipe_id

      t.timestamps
    end
  end
end
