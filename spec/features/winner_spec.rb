require './spec/spec_helper'
require './spec/round_helper'

feature 'result' do
  scenario 'returns a Draw' do
    round # **HELPER** mock computer to choice Rock and mock user to sign_in
    click_button 'Rock' # mock user to choice Rock
    expect(page).to have_content("It's a Draw")
  end
  scenario 'player wins' do
    round # **HELPER** mock computer to choice Rock and mock user to sign_in
    click_button 'Paper' # mock user to choice Paper
    expect(page).to have_content('You Win')
  end
  scenario 'player Lose' do
    round # **HELPER** mock computer to choice Rock and mock user to sign_in
    click_button 'Scissors' # mock user to choice Scissors
    expect(page).to have_content('You Lose')
  end
end
