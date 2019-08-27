feature 'multiplayer' do
scenario 'page working?' do
  visit '/multiplayer'
  fill_in :player1, with:'Alex'
  fill_in :player2, with:'Bob'
  click_button 'Enter Name!'
  expect(page).to have_content('Alex vs. Bob')
end
end
