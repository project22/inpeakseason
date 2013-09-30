require 'spec_helper'

describe "market_comments/edit" do
  before(:each) do
    @market_comment = assign(:market_comment, stub_model(MarketComment,
      :comment => "MyText",
      :status => 1
    ))
  end

  it "renders the edit market_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", market_comment_path(@market_comment), "post" do
      assert_select "textarea#market_comment_comment[name=?]", "market_comment[comment]"
      assert_select "input#market_comment_status[name=?]", "market_comment[status]"
    end
  end
end
