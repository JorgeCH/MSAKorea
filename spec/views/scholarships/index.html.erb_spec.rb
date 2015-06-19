require 'spec_helper'

describe "scholarships/index" do
  before(:each) do
    assign(:scholarships, [
      stub_model(Scholarship,
        :name => "Name",
        :description => "MyText",
        :address => "MyText",
        :link => "Link"
      ),
      stub_model(Scholarship,
        :name => "Name",
        :description => "MyText",
        :address => "MyText",
        :link => "Link"
      )
    ])
  end

  it "renders a list of scholarships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 4
    assert_select "tr>td", :text => "MyText".to_s, :count => 4
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
