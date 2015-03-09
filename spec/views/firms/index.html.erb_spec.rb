require 'rails_helper'

RSpec.describe "firms/index", type: :view do
  before(:each) do
    assign(:firms, [
      Firm.create!(
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :address => "Address",
        :user_id => 1
      ),
      Firm.create!(
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :address => "Address",
        :user_id => 1
      )
    ])
  end

  it "renders a list of firms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
