require './app.rb'

feature 'Hit points' do
  scenario 'Players can see eachother points' do
    visit '/play'
    expect(page).to have_content("#{@player1_hitpoints}/60 HP")
    expect(page).to have_content("#{@player2_hitpoints}/60 HP")
  end
end
