require 'rails_helper'

RSpec.describe "firms/new", type: :view do
  before(:each) do
    assign(:firm, Firm.new(
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :address => "MyString",
      :user_id => 1
    ))
  end

  it "renders new firm form" do
    render

    assert_select "form[action=?][method=?]", firms_path, "post" do

      assert_select "input#firm_name[name=?]", "firm[name]"

      assert_select "input#firm_category[name=?]", "firm[category]"

      assert_select "textarea#firm_description[name=?]", "firm[description]"

      assert_select "input#firm_address[name=?]", "firm[address]"

      assert_select "input#firm_user_id[name=?]", "firm[user_id]"
    end
  end
end
