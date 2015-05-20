require 'spec_helper'

describe "prearrivals/show" do
  before(:each) do
    @prearrival = assign(:prearrival, stub_model(Prearrival,
      :title => "Title",
      :description => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
  end
end
