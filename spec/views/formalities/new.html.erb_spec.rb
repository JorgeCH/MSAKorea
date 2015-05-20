require 'spec_helper'

describe "formalities/new" do
  before(:each) do
    assign(:formality, stub_model(Formality,
      :name => "MyString",
      :description => "MyText",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new formality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", formalities_path, "post" do
      assert_select "input#formality_name[name=?]", "formality[name]"
      assert_select "textarea#formality_description[name=?]", "formality[description]"
      assert_select "input#formality_image[name=?]", "formality[image]"
    end
  end
end
