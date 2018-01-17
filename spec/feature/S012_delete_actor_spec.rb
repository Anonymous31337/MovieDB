require 'rails_helper'

describe 's012: privileged user', :type => :feature do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)
    end

    it 'it can edit/delete a new actor' do

      visit "/actors/1/edit"

      fill_in 'actor_name', with: 'Chalamet'
      fill_in 'actor_fname', with: 'Timothee'


      click_button 'Update Actor'

      expect(page).to have_content("Actor was successfully updated.")

    end
  end
end
