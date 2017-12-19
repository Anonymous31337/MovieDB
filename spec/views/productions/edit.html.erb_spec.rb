require 'rails_helper'

RSpec.describe "productions/edit", type: :view do
  before(:each) do
    @production = assign(:production, Production.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit production form" do
    render

    assert_select "form[action=?][method=?]", production_path(@production), "post" do

      assert_select "input[name=?]", "production[name]"
    end
  end
end
