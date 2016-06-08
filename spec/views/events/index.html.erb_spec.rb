require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :location => "Location",
        :total_amount => "",
        :paid_by_amar => "",
        :paid_by_akbar => "",
        :paid_by_anthony => ""
      ),
      Event.create!(
        :location => "Location",
        :total_amount => "",
        :paid_by_amar => "",
        :paid_by_akbar => "",
        :paid_by_anthony => ""
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
