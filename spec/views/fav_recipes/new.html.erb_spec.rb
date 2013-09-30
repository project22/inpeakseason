require 'spec_helper'

describe "fav_recipes/new" do
  before(:each) do
    assign(:fav_recipe, stub_model(FavRecipe,
      :recipe_id => "MyString"
    ).as_new_record)
  end

  it "renders new fav_recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fav_recipes_path, "post" do
      assert_select "input#fav_recipe_recipe_id[name=?]", "fav_recipe[recipe_id]"
    end
  end
end
