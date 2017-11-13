require 'capybara/rails'
require 'rails_helper'

describe 's001/2: user can see a list of movies and their actors' do
  before :each do
    Movie.create(title: "Der König der Löwen", originaltitle: "The Lion King", releaseyear: 1994, cover: "url", legnth: 88, ageres: 0, synopsis: "bla mit Löwen")
  end

  it 'shows the movies' do
    visit root_path
    expect(page).to have_content("Der König der Löwen")
  end
end