require 'spec_helper'

describe "activities/edit" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "MyString",
      :date => "",
      :place => "MyString",
      :description => "MyText",
      :linkfb => "MyString",
      :contact => "MyString",
      :photo1 => "MyString",
      :photo2 => "MyString"
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do
      assert_select "input#activity_name[name=?]", "activity[name]"
      assert_select "input#activity_date[name=?]", "activity[date]"
      assert_select "input#activity_place[name=?]", "activity[place]"
      assert_select "textarea#activity_description[name=?]", "activity[description]"
      assert_select "input#activity_linkfb[name=?]", "activity[linkfb]"
      assert_select "input#activity_contact[name=?]", "activity[contact]"
      assert_select "input#activity_photo1[name=?]", "activity[photo1]"
      assert_select "input#activity_photo2[name=?]", "activity[photo2]"
    end
  end
end
