require 'rails_helper'

describe 's004/5: privileged user', :type => :feature do
             context '(when logged in)' do
              before :each do
                user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
                login_as(user, :scope => :user)
                Movie.create(title: "Avatar", originaltitle: "Avatar", releaseyear: 1994, cover: "", length: 88, ageres: 0, synopsis: "bla")
                end

    it 'it can edit a new movie' do
      visit "/movies/1/edit"

      fill_in 'movie_originaltitle', with: 'Test'

      click_button 'Update Movie'

      expect(page).to have_content("Movie was successfully updated.")

    end
  end
end