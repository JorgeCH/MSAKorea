require 'spec_helper'

describe "formalities/edit" do
  before(:each) do
    @formality = assign(:formality, stub_model(Formality,
      :name => "MyString",
      :description => "MyText",
      :image => "MyString"
    ))
  end

  it "renders the edit formality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", formality_path(@formality), "post" do
      assert_select "input#formality_name[name=?]", "formality[name]"
      assert_select "textarea#formality_description[name=?]", "formality[description]"
      assert_select "input#formality_image[name=?]", "formality[image]"
    end
  end
end
