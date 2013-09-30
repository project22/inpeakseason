require 'spec_helper'

describe "market_comments/new" do
  before(:each) do
    assign(:market_comment, stub_model(MarketComment,
      :comment => "MyText",
      :status => 1
    ).as_new_record)
  end

  it "renders new market_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", market_comments_path, "post" do
      assert_select "textarea#market_comment_comment[name=?]", "market_comment[comment]"
      assert_select "input#market_comment_status[name=?]", "market_comment[status]"
    end
  end
end
