require 'rails_helper'

RSpec.describe "schoolings/index", type: :view do
  before(:each) do
    assign(:schoolings, [
      Schooling.create!(
        level: "Level",
        description: "Description",
        percentage: 2.5
      ),
      Schooling.create!(
        level: "Level",
        description: "Description",
        percentage: 2.5
      )
    ])
  end

  it "renders a list of schoolings" do
    render
    assert_select "tr>td", text: "Level".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
  end
end
