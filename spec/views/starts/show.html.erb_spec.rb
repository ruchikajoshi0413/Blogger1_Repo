require 'rails_helper'

RSpec.describe "starts/show", type: :view do
  before(:each) do
    assign(:start, Start.create!(
      id: 2,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
