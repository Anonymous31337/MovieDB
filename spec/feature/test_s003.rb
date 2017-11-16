require 'rails_helper'

describe 's003: privileged user' do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)
    end

  it 'it can add a new movie' do
    visit new_movie_path

    # note that these are all ids rather than texts.
    fill_in 'movie_title', with: 'Disneys Eine Weihnachtsgeschichte'
    fill_in 'movie_originaltitle', with: 'A Christmas Carol'
    fill_in 'movie_actors', with: ''
    fill_in 'movie_releaseyear', with: 2009
    fill_in 'movie_cover', with: 'Url'
    fill_in 'movie_length', with: 96
    fill_in 'movie_cover', with: ''
    fill_in 'movie_synopsis', with: 'Weihnachten, Scrooge (böse), Geister, noch mehr Weihnachten, Scrooge (freundlich), alle glücklich'

    click_button 'Create Movie'

    expect(page).to have_content('Movie was successfully created.')
    expect(page).to have_content('Disneys Eine Weihnachtsgeschichte')
    expect(page).to have_content('A Christmas Carol')
    expect(page).to have_content('')
    expect(page).to have_content('Release year: 2009')
    expect(page).to have_content('URL')
    expect(page).to have_content('Movie length: 96')
    expect(page).to have_content('Weihnachten, Scrooge (böse), Geister, noch mehr Weihnachten, Scrooge (freundlich), alle glücklich')
    end
  end
end
