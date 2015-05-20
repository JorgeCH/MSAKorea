require 'spec_helper'

describe "prearrivals/new" do
  before(:each) do
    assign(:prearrival, stub_model(Prearrival,
      :title => "MyString",
      :description => "MyText",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new prearrival form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prearrivals_path, "post" do
      assert_select "input#prearrival_title[name=?]", "prearrival[title]"
      assert_select "textarea#prearrival_description[name=?]", "prearrival[description]"
      assert_select "input#prearrival_image[name=?]", "prearrival[image]"
    end
  end
end
