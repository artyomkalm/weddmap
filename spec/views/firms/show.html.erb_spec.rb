require 'rails_helper'

RSpec.describe "firms/show", type: :view do
  before(:each) do
    @firm = assign(:firm, Firm.create!(
      :name => "Name",
      :category => "Category",
      :description => "MyText",
      :address => "Address",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/1/)
  end
end
