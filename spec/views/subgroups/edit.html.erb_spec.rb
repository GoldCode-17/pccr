require 'rails_helper'

RSpec.describe "subgroups/edit", type: :view do
  before(:each) do
    @subgroup = assign(:subgroup, Subgroup.create!(
      acronym: "MyStr",
      description: "MyString"
    ))
  end

  it "renders the edit subgroup form" do
    render

      assert_select "form[action=?][method=?]", subgroup_path(@subgroup), "post" do

        assert_select "input[name=?]", "subgroup[acronym]"

        assert_select "input[name=?]", "subgroup[description]"
    end
  end
end