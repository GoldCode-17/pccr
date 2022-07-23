require 'rails_helper'

RSpec.describe "framings/edit", type: :view do
  before(:each) do
    @framing = assign(:framing, Framing.create!(
      service_time: "MyString",
      position: 1
    ))
  end

  it "renders the edit framing form" do
    render

    assert_select "form[action=?][method=?]", framing_path(@framing), "post" do

      assert_select "input[name=?]", "framing[service_time]"

      assert_select "input[name=?]", "framing[position]"
    end
  end
end
