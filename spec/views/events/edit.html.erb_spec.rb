require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :location => "MyString",
      :total_amount => "",
      :paid_by_amar => "",
      :paid_by_akbar => "",
      :paid_by_anthony => ""
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_location[name=?]", "event[location]"

      assert_select "input#event_total_amount[name=?]", "event[total_amount]"

      assert_select "input#event_paid_by_amar[name=?]", "event[paid_by_amar]"

      assert_select "input#event_paid_by_akbar[name=?]", "event[paid_by_akbar]"

      assert_select "input#event_paid_by_anthony[name=?]", "event[paid_by_anthony]"
    end
  end
end
