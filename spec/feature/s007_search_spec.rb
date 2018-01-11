#s007: search

require 'rails_helper'
describe 's007: As a user, I can search for movies by name, so that I can choose one of them.' do

    it "shows a search result" do
      visit "/movies"

      find('sr-only').set('Avatar')
      #fill_in 'keywords', with: 'Avatar'
      click_button 'Find Movie'
      expect(page).to have_content('Avatar')
    end
end
