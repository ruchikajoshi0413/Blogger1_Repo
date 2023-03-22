require 'rails_helper'

RSpec.describe "starts/edit", type: :view do
  let(:start) {
    Start.create!(
      id: 1,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:start, start)
  end

  it "renders the edit start form" do
    render

    assert_select "form[action=?][method=?]", start_path(start), "post" do

      assert_select "input[name=?]", "start[id]"

      assert_select "input[name=?]", "start[name]"
    end
  end
end
