require 'rails_helper'
require 'spec_helper'
describe 's009: privileged user', :type => :feature do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)
    end

    it 'it can add a new director' do
      visit "/directors/new"

      fill_in 'director[name]', with: 'Müller'
      fill_in 'director[fname]', with: 'Martin'
      fill_in 'director[birthdate]', with: '2084/10/02'

      click_button 'Create Director'

      expect(page).to have_content('Director was successfully created.')
      expect(page).to have_content('Müller')
      expect(page).to have_content('Martin')
    end
  end
end
