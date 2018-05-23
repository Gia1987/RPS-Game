require './spec/spec_helper'
require './spec/sign_in_helper'

feature 'Nick name' do
  scenario 'player can enter own name' do
    sign_in
    expect(page).to have_content("Welcome Giacomo")
  end
end

feature 'weapons' do
  scenario 'player can choice own weapon' do
    sign_in
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
