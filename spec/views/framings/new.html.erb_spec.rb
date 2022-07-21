require 'rails_helper'

RSpec.describe "framings/new", type: :view do
  before(:each) do
    assign(:framing, Framing.new(
      service_time: "MyString",
      position: 1
    ))
  end

  it "renders new framing form" do
    render

    assert_select "form[action=?][method=?]", framings_path, "post" do

      assert_select "input[name=?]", "framing[service_time]"

      assert_select "input[name=?]", "framing[position]"
    end
  end
end
