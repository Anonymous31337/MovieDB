require 'capybara/rails'
require 'rails_helper'

describe 's003: privileged user' do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'Peter', password: 'PetersPasswort', password_confirmation: 'PetersPasswort')
      login_as(user, :scope => :user)
    end

    it 'it can edit/delete a new movie' do
      #...
    end
  end
end