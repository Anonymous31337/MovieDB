require 'rails_helper'

RSpec.describe "productions/show", type: :view do
  before(:each) do
    @production = assign(:production, Production.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
