require 'rails_helper'

RSpec.describe "productions/index", type: :view do
  before(:each) do
    assign(:productions, [
      Production.create!(
        :name => "Name"
      ),
      Production.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of productions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
