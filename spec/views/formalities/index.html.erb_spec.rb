require 'spec_helper'

describe "formalities/index" do
  before(:each) do
    assign(:formalities, [
      stub_model(Formality,
        :name => "Name",
        :description => "MyText",
        :image => "Image"
      ),
      stub_model(Formality,
        :name => "Name",
        :description => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of formalities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
