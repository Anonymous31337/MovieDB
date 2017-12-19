require 'rails_helper'

RSpec.describe "directors/index", type: :view do
  before(:each) do
    assign(:directors, [
      Director.create!(
        :name => "Name",
        :fname => "Fname"
      ),
      Director.create!(
        :name => "Name",
        :fname => "Fname"
      )
    ])
  end

  it "renders a list of directors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
  end
end
