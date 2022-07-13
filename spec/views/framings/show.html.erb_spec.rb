require 'rails_helper'

RSpec.describe "framings/show", type: :view do
  before(:each) do
    @framing = assign(:framing, Framing.create!(
      service_time: "Service Time",
      position: "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Service Time/)
    expect(rendered).to match(/Position/)
  end
end
