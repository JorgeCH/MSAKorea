require 'spec_helper'

describe "scholarships/show" do
  before(:each) do
    @scholarship = assign(:scholarship, stub_model(Scholarship,
      :name => "Name",
      :description => "MyText",
      :address => "MyText",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Link/)
  end
end
