require 'rails_helper'

RSpec.describe "framings/index", type: :view do
  before(:each) do
    assign(:framings, [
      Framing.create!(
        service_time: "Service Time",
        position: "Position"
      ),
      Framing.create!(
        service_time: "Service Time",
        position: "Position"
      )
    ])
  end

  it "renders a list of framings" do
    render
    assert_select "tr>td", text: "Service Time".to_s, count: 2
    assert_select "tr>td", text: "Position".to_s, count: 2
  end
end
