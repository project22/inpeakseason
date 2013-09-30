require 'spec_helper'

describe "markets/edit" do
  before(:each) do
    @market = assign(:market, stub_model(Market,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit market form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", market_path(@market), "post" do
      assert_select "input#market_name[name=?]", "market[name]"
      assert_select "input#market_address[name=?]", "market[address]"
    end
  end
end
