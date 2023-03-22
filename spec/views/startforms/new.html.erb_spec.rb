require 'rails_helper'

RSpec.describe "startforms/new", type: :view do
  before(:each) do
    assign(:startform, Startform.new(
      number: 1,
      name: "MyString"
    ))
  end

  it "renders new startform form" do
    render

    assert_select "form[action=?][method=?]", startforms_path, "post" do

      assert_select "input[name=?]", "startform[number]"

      assert_select "input[name=?]", "startform[name]"
    end
  end
end
