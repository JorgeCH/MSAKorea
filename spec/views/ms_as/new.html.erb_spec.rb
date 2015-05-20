require 'spec_helper'

describe "msas/new" do
  before(:each) do
    assign(:msa, stub_model(Msa,
      :name => "MyString",
      :logo => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new msa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", msas_path, "post" do
      assert_select "input#msa_name[name=?]", "msa[name]"
      assert_select "input#msa_logo[name=?]", "msa[logo]"
      assert_select "textarea#msa_description[name=?]", "msa[description]"
    end
  end
end
