require 'spec_helper'

describe "scholarships/new" do
  before(:each) do
    assign(:scholarship, stub_model(Scholarship,
      :name => "MyString",
      :description => "MyText",
      :address => "MyText",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new scholarship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scholarships_path, "post" do
      assert_select "input#scholarship_name[name=?]", "scholarship[name]"
      assert_select "textarea#scholarship_description[name=?]", "scholarship[description]"
      assert_select "textarea#scholarship_address[name=?]", "scholarship[address]"
      assert_select "input#scholarship_link[name=?]", "scholarship[link]"
    end
  end
end
