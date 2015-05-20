require 'spec_helper'

describe "boards/new" do
  before(:each) do
    assign(:board, stub_model(Board,
      :name => "MyString",
      :position => "MyString",
      :email => "MyString",
      :year => 1,
      :photo => "MyString"
    ).as_new_record)
  end

  it "renders new board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boards_path, "post" do
      assert_select "input#board_name[name=?]", "board[name]"
      assert_select "input#board_position[name=?]", "board[position]"
      assert_select "input#board_email[name=?]", "board[email]"
      assert_select "input#board_year[name=?]", "board[year]"
      assert_select "input#board_photo[name=?]", "board[photo]"
    end
  end
end
