require 'rails_helper'
require 'spec_helper'
describe 's010: privileged user', :type => :feature do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)
    end

    it 'it can add a new actor' do
      visit "/actors/new"

      fill_in 'actor[name]', with: 'Mouse'
      fill_in 'actor[fname]', with: 'Mickey'
      fill_in 'actor[birthdate]', with: '2000/01/01'
      fill_in 'actor[workingcountry]', with: 'USA'
      click_button 'Create Actor'

      expect(page).to have_content('Actor was successfully created.')
      expect(page).to have_content('Mickey')
      expect(page).to have_content('Mouse')
      expect(page).to have_content('2000/01/01')
      expect(page).to have_content('USA')
    end
  end
end
