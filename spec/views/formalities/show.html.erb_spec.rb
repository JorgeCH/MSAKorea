require 'spec_helper'

describe "formalities/show" do
  before(:each) do
    @formality = assign(:formality, stub_model(Formality,
      :name => "Name",
      :description => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
  end
end
