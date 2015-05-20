require 'spec_helper'

describe "lives/show" do
  before(:each) do
    @life = assign(:life, stub_model(Life,
      :title => "Title",
      :description => "MyText",
      :image1 => "Image1",
      :image2 => "Image2",
      :image3 => "Image3",
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image1/)
    rendered.should match(/Image2/)
    rendered.should match(/Image3/)
    rendered.should match(/Photo/)
  end
end
