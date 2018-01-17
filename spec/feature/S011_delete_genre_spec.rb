require 'rails_helper'

describe 's11: privileged user', :type => :feature do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)

      #Genre.create(name: "Horror")

    end

    it 'it can edit/delete a new genre' do
      visit "/genres/1/edit"

      fill_in 'genre_name', with: 'Test'

      click_button 'Update Genre'

      expect(page).to have_content("Genre was successfully updated.")


    # find(:xpath, "//a[@href='/genres/1']").find(:xpath, '//a[contains("Destroy")]')click 'Destroy'
    # find(:xpath, '//link[@href="/genres/1"]', :visible => false).click 'Destroy'
    # find('a[href="#{/genres/1}"]', :visible => false).click 'Destroy' #wenn eine liste bei mehreren gleich buttons gefunden wird, hier nochmal ändern
      #press OK
      #page.driver.browser.switch_to.alert.accept
      #expect(page).to have_no_content("Horror")

    end
  end
end
