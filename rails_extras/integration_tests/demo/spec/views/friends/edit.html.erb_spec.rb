require 'spec_helper'

describe "friends/edit" do
  before(:each) do
    @friend = assign(:friend, stub_model(Friend,
      :name => "MyString",
      :age => 1
    ))
  end

  it "renders the edit friend form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", friend_path(@friend), "post" do
      assert_select "input#friend_name[name=?]", "friend[name]"
      assert_select "input#friend_age[name=?]", "friend[age]"
    end
  end
end
