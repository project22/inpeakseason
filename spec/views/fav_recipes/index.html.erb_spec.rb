require 'spec_helper'

describe "fav_recipes/index" do
  before(:each) do
    assign(:fav_recipes, [
      stub_model(FavRecipe,
        :recipe_id => "Recipe"
      ),
      stub_model(FavRecipe,
        :recipe_id => "Recipe"
      )
    ])
  end

  it "renders a list of fav_recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Recipe".to_s, :count => 2
  end
end
