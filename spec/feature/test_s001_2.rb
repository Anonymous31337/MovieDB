require 'rails_helper'

describe 's001/2: user can see a list of movies and their actors' do

  it 'shows the movies' do
    visit root_path
    # following movies should already exist from seeds
    expect(page).to have_content("Avatar")
    expect(page).to have_content("Der große Gatsby")
    expect(page).to have_content("The Wolf of Wallstreet")
    expect(page).to have_content("Shutter Island")
    expect(page).to have_content("Fight Club")
  end
end
