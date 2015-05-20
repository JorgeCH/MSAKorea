require 'spec_helper'

describe "lives/index" do
  before(:each) do
    assign(:lives, [
      stub_model(Life,
        :title => "Title",
        :description => "MyText",
        :image1 => "Image1",
        :image2 => "Image2",
        :image3 => "Image3",
        :photo => "Photo"
      ),
      stub_model(Life,
        :title => "Title",
        :description => "MyText",
        :image1 => "Image1",
        :image2 => "Image2",
        :image3 => "Image3",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of lives" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image1".to_s, :count => 2
    assert_select "tr>td", :text => "Image2".to_s, :count => 2
    assert_select "tr>td", :text => "Image3".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
