require './app.rb'

feature 'Name form' do
  scenario 'expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
    sign_in_and_play
    visit('/play')
    expect(page).to have_content('Tom')
    expect(page).to have_content('Jerry')
  end
end
