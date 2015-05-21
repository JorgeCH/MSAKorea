require 'spec_helper'

describe "descriptions/show" do
  before(:each) do
    @description = assign(:description, stub_model(Description,
      :name => "Name",
      :logo => "Logo",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Logo/)
    rendered.should match(/MyText/)
  end
end
