require 'spec_helper'

describe "activities/index" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :name => "Name",
        :date => "",
        :place => "Place",
        :description => "MyText",
        :linkfb => "Linkfb",
        :contact => "Contact",
        :photo1 => "Photo1",
        :photo2 => "Photo2"
      ),
      stub_model(Activity,
        :name => "Name",
        :date => "",
        :place => "Place",
        :description => "MyText",
        :linkfb => "Linkfb",
        :contact => "Contact",
        :photo1 => "Photo1",
        :photo2 => "Photo2"
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Linkfb".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Photo1".to_s, :count => 2
    assert_select "tr>td", :text => "Photo2".to_s, :count => 2
  end
end
