require 'rails_helper'

RSpec.describe "firms/edit", type: :view do
  before(:each) do
    @firm = assign(:firm, Firm.create!(
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :address => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit firm form" do
    render

    assert_select "form[action=?][method=?]", firm_path(@firm), "post" do

      assert_select "input#firm_name[name=?]", "firm[name]"

      assert_select "input#firm_category[name=?]", "firm[category]"

      assert_select "textarea#firm_description[name=?]", "firm[description]"

      assert_select "input#firm_address[name=?]", "firm[address]"

      assert_select "input#firm_user_id[name=?]", "firm[user_id]"
    end
  end
end
