#s007: search

require 'rails_helper'
describe 's007: As a user, I can search for movies by name, so that I can choose one of them.' do
  before :each do
    visit "/movies"
        #navigte to text box (via xpath?)
        # fill text in
       # press search
       #have_content(searchword) --> or not depends on seeds
  end
end