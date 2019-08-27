require 'capybara/rspec'

feature 'homepage' do
  scenario 'working?' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper and Scissors game')
  end
  scenario 'find button?' do
    visit '/'
    expect(page).to have_button('Enter Game')
  end
end
