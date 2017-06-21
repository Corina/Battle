require './app.rb'

feature 'Name form' do

  scenario 'expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
    visit '/'
    fill_in('name1', with:'Tom')
    fill_in('name2', with:'Jerry')
    click_button('Submit names')
    expect(page).to have_content('Tom')
    expect(page).to have_content('Jerry')
  end

end
