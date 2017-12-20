require 'rails_helper'

RSpec.describe "ratings/index", type: :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        :rating => 2,
        :comment => "Comment"
      ),
      Rating.create!(
        :rating => 2,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
