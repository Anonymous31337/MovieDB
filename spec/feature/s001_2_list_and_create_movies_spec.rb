require 'rails_helper'
require 'spec_helper'
describe 's001/2 version 2: user can see a list of movies and their actors' do
  before :each do
        user = User.create(email: 'someone@htw-berlin.de', password: 'geheimgeheim', password_confirmation: 'geheimgeheim')
        login_as(user, :scope => :user)
    Movie.create(title: "Der König der Löwen", originaltitle: "The Lion King", releaseyear: 1994, cover: "url", length: 88, ageres: 0, synopsis: "bla mit Löwen")
  end

  it 'shows the movies' do
    visit "/movies"
    expect(page).to have_content("Der König der Löwen")
  end
 end