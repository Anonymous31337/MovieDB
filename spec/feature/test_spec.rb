require 'rails_helper'
require 'spec_helper'
describe 's001/2 version 2: user can see a list of movies and their actors' do
  before :each do
        user = User.create(email: 'someone@htw-berlin.de', password: 'geheimgeheim', password_confirmation: 'geheimgeheim')
        login_as(user, :scope => :user)
  end

  it 'shows the movies' do
    visit "/movies#index"
    puts page.html
  end
 end
