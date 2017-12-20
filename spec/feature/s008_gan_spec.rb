#S008: use website via internet

#RSpec::Matchers.define :have_link_open_in_new_window do |locator, options={}|
#  match do |page|
#    link = page.find_link(locator, options)
#    link && link[:target] == '_blank'
#  end
#end

describe 's008: As a user, I can reach the website from a global area network. ' do
  is_expected.to have_link('You need to sign in or sign up before continuing.', href: 'http://moviedb-imi.herokuapp.com/')
  expect(find_link('You need to sign in or sign up before continuing.')[:target]).to eq('_blank')
  end