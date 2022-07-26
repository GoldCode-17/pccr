require 'rails_helper'

RSpec.describe "subgroups/show", type: :view do
  before(:each) do
    @subgroup = assign(:subgroup, Subgroup.create!(
      acronym: "Acron",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Acronym/)
    expect(rendered).to match(/Description/)
  end
end
