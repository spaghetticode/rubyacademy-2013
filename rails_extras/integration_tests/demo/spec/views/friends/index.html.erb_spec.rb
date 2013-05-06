require 'spec_helper'

describe "friends/index" do
  before(:each) do
    assign(:friends, [
      stub_model(Friend,
        :name => "Name",
        :age => 1
      ),
      stub_model(Friend,
        :name => "Name",
        :age => 1
      )
    ])
  end

  it "renders a list of friends" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
