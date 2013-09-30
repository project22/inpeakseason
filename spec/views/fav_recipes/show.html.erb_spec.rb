require 'spec_helper'

describe "fav_recipes/show" do
  before(:each) do
    @fav_recipe = assign(:fav_recipe, stub_model(FavRecipe,
      :recipe_id => "Recipe"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Recipe/)
  end
end
