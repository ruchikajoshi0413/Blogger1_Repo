require 'rails_helper'

RSpec.describe "startforms/edit", type: :view do
  let(:startform) {
    Startform.create!(
      number: 1,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:startform, startform)
  end

  it "renders the edit startform form" do
    render

    assert_select "form[action=?][method=?]", startform_path(startform), "post" do

      assert_select "input[name=?]", "startform[number]"

      assert_select "input[name=?]", "startform[name]"
    end
  end
end
