require './spec/spec_helper'
require './spec/sign_in_helper'

feature 'score' do
  scenario 'player score increase by 1' do
    round # **HELPER** mock computer to choice Rock and mock user to sign_in
    click_button 'Paper' # mock user to choice Paper
    expect(page).to have_content('score : 1')
  end
  scenario 'AI score increase by 1' do
    round # **HELPER** mock computer to choice Rock and mock user to sign_in
    click_button 'Scissors' # mock user to choice Scissors
    expect(page).to have_content('PC_score : 1')
  end
end
