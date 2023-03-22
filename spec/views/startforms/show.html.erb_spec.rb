require 'rails_helper'

RSpec.describe "startforms/show", type: :view do
  before(:each) do
    assign(:startform, Startform.create!(
      number: 2,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
