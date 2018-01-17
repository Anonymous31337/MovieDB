require 'rails_helper'

describe 's013: privileged user', :type => :feature do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)
    end

    it 'it can edit/delete a new director' do

        visit "/director/1/edit"

        fill_in 'director_name', with: 'Cedric'
        fill_in 'director_fname', with: 'Timothey'


        click_button 'Update Director'

        expect(page).to have_content("Director was successfully updated.")

    end
  end
end
