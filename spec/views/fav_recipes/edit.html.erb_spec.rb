require 'spec_helper'

describe "fav_recipes/edit" do
  before(:each) do
    @fav_recipe = assign(:fav_recipe, stub_model(FavRecipe,
      :recipe_id => "MyString"
    ))
  end

  it "renders the edit fav_recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fav_recipe_path(@fav_recipe), "post" do
      assert_select "input#fav_recipe_recipe_id[name=?]", "fav_recipe[recipe_id]"
    end
  end
end
