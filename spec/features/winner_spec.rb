require './spec/spec_helper'
require './spec/round_helper'

feature 'result' do
  scenario 'returns a Draw' do
    round
    click_button 'Rock'
    expect(page).to have_content("Is a Draw")
  end
  scenario 'player wins' do
    round
    click_button 'Paper'
    expect(page).to have_content("You Win")
  end
  scenario 'player Lose' do
    round
    click_button 'Scissors'
    expect(page).to have_content("You Lose")
  end
end
