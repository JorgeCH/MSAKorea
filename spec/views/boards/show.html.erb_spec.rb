require 'spec_helper'

describe "boards/show" do
  before(:each) do
    @board = assign(:board, stub_model(Board,
      :name => "Name",
      :position => "Position",
      :email => "Email",
      :year => 1,
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Position/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
    rendered.should match(/Photo/)
  end
end
