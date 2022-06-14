require 'rails_helper'

RSpec.describe "subgroups/index", type: :view do
  before(:each) do
    assign(:subgroups, [
      Subgroup.create!(
        acronyms: "Acronyms",
        description: "Description"
      ),
      Subgroup.create!(
        acronyms: "Acronyms",
        description: "Description"
      )
    ])
  end

  it "renders a list of subgroups" do
    render
    assert_select "tr>td", text: "Acronyms".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end