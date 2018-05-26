require './spec/spec_helper'
require './spec/sign_in_helper'

feature 'score' do
  scenario 'player score increase by 1' do
    round
    click_button 'Paper'
    expect(page).to have_content("score :1")
  end
  scenario 'AI score increase by 1' do
    round
    click_button 'Scissors'
    expect(page).to have_content("score :1")
  end
end
