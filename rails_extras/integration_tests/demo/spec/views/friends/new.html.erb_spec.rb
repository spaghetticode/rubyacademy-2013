require 'spec_helper'

describe "friends/new" do
  before(:each) do
    assign(:friend, stub_model(Friend,
      :name => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new friend form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", friends_path, "post" do
      assert_select "input#friend_name[name=?]", "friend[name]"
      assert_select "input#friend_age[name=?]", "friend[age]"
    end
  end
end
