require 'rails_helper'

RSpec.describe "schoolings/edit", type: :view do
  before(:each) do
    @schooling = assign(:schooling, Schooling.create!(
      level: "MyString",
      description: "MyString",
      percentage: 1.5
    ))
  end

  it "renders the edit schooling form" do
    render

    assert_select "form[action=?][method=?]", schooling_path(@schooling), "post" do

      assert_select "input[name=?]", "schooling[level]"

      assert_select "input[name=?]", "schooling[description]"

      assert_select "input[name=?]", "schooling[percentage]"
    end
  end
end
