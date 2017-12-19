require 'rails_helper'

RSpec.describe "ratings/new", type: :view do
  before(:each) do
    assign(:rating, Rating.new(
      :rating => 1,
      :comment => "MyString"
    ))
  end

  it "renders new rating form" do
    render

    assert_select "form[action=?][method=?]", ratings_path, "post" do

      assert_select "input[name=?]", "rating[rating]"

      assert_select "input[name=?]", "rating[comment]"
    end
  end
end
