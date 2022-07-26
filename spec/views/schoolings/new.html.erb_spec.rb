require 'rails_helper'

RSpec.describe "schoolings/new", type: :view do
  before(:each) do
    assign(:schooling, Schooling.new(
      level: "MyString",
      description: "MyString",
      percentage: 1.5
    ))
  end

  it "renders new schooling form" do
    render

    assert_select "form[action=?][method=?]", schoolings_path, "post" do

      assert_select "input[name=?]", "schooling[level]"

      assert_select "input[name=?]", "schooling[description]"

      assert_select "input[name=?]", "schooling[percentage]"
    end
  end
end
