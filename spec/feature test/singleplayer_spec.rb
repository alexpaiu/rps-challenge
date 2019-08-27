require 'capybara/rspec'

feature 'single player' do
  scenario 'page working?' do
    visit '/singleplayer'
    fill_in :player1, with:'Alex'
    click_button 'Enter Name'
    expect(page).to have_content('Alex vs. Computer')
  end
end
