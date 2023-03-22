require 'rails_helper'

RSpec.describe "starts/index", type: :view do
  before(:each) do
    assign(:starts, [
      Start.create!(
        id: 2,
        name: "Name"
      ),
      Start.create!(
        id: 2,
        name: "Name"
      )
    ])
  end

  it "renders a list of starts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
