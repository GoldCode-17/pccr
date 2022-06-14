require 'rails_helper'

RSpec.describe "subgroups/new", type: :view do
  before(:each) do
    assign(:subgroup, Subgroup.new(
      acronym: "MyStr",
      description: "MyString"
    ))
  end

  it "renders new subgroup form" do
    render

    assert_select "form[action=?][method=?]", subgroups_path, "post" do

      assert_select "input[name=?]", "subgroup[acronym]"

      assert_select "input[name=?]", "subgroup[description]"
    end
  end
end
