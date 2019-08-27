require 'capybara/rspec'

feature 'game choose 1/2 players' do
  scenario 'single player button working?' do
    visit '/game'
    expect(page).to have_button('One player')
  end
  scenario 'double players button working?' do
    visit '/game'
    expect(page).to have_button('Two players')
  end
end
