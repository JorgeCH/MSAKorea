require 'spec_helper'

describe "descriptions/edit" do
  before(:each) do
    @description = assign(:description, stub_model(Description,
      :name => "MyString",
      :logo => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit description form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", description_path(@description), "post" do
      assert_select "input#description_name[name=?]", "description[name]"
      assert_select "input#description_logo[name=?]", "description[logo]"
      assert_select "textarea#description_text[name=?]", "description[text]"
    end
  end
end
