require 'rails_helper'
require 'spec_helper'
describe 's006 As a privileged user, I can add new genres.', :type => :feature do
  before :each do
        user = User.create(email: 'someone@htw-berlin.de', password: 'geheimgeheim', password_confirmation: 'geheimgeheim')
        login_as(user, :scope => :user)
    Genre.create(name: "Thriller")
  end

  it 'add genre' do
    visit "/genres/new"

    # note that these are all ids rather than texts.
    fill_in 'genre_name', :with => 'Thriller'

    click_button 'Create Genre'

    expect(page).to have_content('Thriller')
    end
end
