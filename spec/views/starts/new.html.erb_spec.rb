require 'rails_helper'

RSpec.describe "starts/new", type: :view do
  before(:each) do
    assign(:start, Start.new(
      id: 1,
      name: "MyString"
    ))
  end

  it "renders new start form" do
    render

    assert_select "form[action=?][method=?]", starts_path, "post" do

      assert_select "input[name=?]", "start[id]"

      assert_select "input[name=?]", "start[name]"
    end
  end
end
