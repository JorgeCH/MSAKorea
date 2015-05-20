require 'spec_helper'

describe "msas/show" do
  before(:each) do
    @msa = assign(:msa, stub_model(Msa,
      :name => "Name",
      :logo => "Logo",
      :description => "MyText"
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
