require 'spec_helper'

describe "market_comments/show" do
  before(:each) do
    @market_comment = assign(:market_comment, stub_model(MarketComment,
      :comment => "MyText",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
