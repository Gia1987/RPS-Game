require './spec/spec_helper'
require './spec/sign_in_helper'

feature 'choose a weapon ' do
  scenario 'player and AI choosen own weapon' do
    srand(0)
    sign_in
    click_button 'Rock'
    expect(page).to have_content("Giacomo chosen:\nRock\nPC chosen:\nRock")
  end
end
