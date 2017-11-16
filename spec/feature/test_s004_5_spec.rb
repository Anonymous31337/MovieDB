require 'rails_helper'

describe 's004/5: privileged user' do
    =begin
             context '(when logged in)' do
              before :each do
                user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
                login_as(user, :scope => :user)
                end
    =end

    it 'it can (edit/)delete a new movie' do
      visit movie_path

      find('a[href="#{/movies/1}"]').click 'Destroy' #wenn eine liste bei mehreren gleich buttons gefunden wird, hier nochmal ändern

      #press OK
      page.driver.browser.switch_to.alert.accept

      expect(page).to have_no_content("Avatar")

    end
  end
end