require 'rails_helper'

RSpec.describe "schoolings/show", type: :view do
  before(:each) do
    @schooling = assign(:schooling, Schooling.create!(
      level: "Level",
      description: "Description",
      percentage: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Level/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2.5/)
  end
end
