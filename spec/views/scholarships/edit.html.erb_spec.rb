require 'spec_helper'

describe "scholarships/edit" do
  before(:each) do
    @scholarship = assign(:scholarship, stub_model(Scholarship,
      :name => "MyString",
      :description => "MyText",
      :address => "MyText",
      :link => "MyString"
    ))
  end

  it "renders the edit scholarship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scholarship_path(@scholarship), "post" do
      assert_select "input#scholarship_name[name=?]", "scholarship[name]"
      assert_select "textarea#scholarship_description[name=?]", "scholarship[description]"
      assert_select "textarea#scholarship_address[name=?]", "scholarship[address]"
      assert_select "input#scholarship_link[name=?]", "scholarship[link]"
    end
  end
end
