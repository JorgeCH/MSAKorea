require 'spec_helper'

describe "msas/edit" do
  before(:each) do
    @msa = assign(:msa, stub_model(Msa,
      :name => "MyString",
      :logo => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit msa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", msa_path(@msa), "post" do
      assert_select "input#msa_name[name=?]", "msa[name]"
      assert_select "input#msa_logo[name=?]", "msa[logo]"
      assert_select "textarea#msa_description[name=?]", "msa[description]"
    end
  end
end
