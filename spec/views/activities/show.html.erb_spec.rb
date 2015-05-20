require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "Name",
      :date => "",
      :place => "Place",
      :description => "MyText",
      :linkfb => "Linkfb",
      :contact => "Contact",
      :photo1 => "Photo1",
      :photo2 => "Photo2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/Place/)
    rendered.should match(/MyText/)
    rendered.should match(/Linkfb/)
    rendered.should match(/Contact/)
    rendered.should match(/Photo1/)
    rendered.should match(/Photo2/)
  end
end
