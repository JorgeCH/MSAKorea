require 'spec_helper'

describe "lives/edit" do
  before(:each) do
    @life = assign(:life, stub_model(Life,
      :title => "MyString",
      :description => "MyText",
      :image1 => "MyString",
      :image2 => "MyString",
      :image3 => "MyString",
      :photo => "MyString"
    ))
  end

  it "renders the edit life form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", life_path(@life), "post" do
      assert_select "input#life_title[name=?]", "life[title]"
      assert_select "textarea#life_description[name=?]", "life[description]"
      assert_select "input#life_image1[name=?]", "life[image1]"
      assert_select "input#life_image2[name=?]", "life[image2]"
      assert_select "input#life_image3[name=?]", "life[image3]"
      assert_select "input#life_photo[name=?]", "life[photo]"
    end
  end
end
