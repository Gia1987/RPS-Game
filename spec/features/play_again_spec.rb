require './spec/spec_helper'
require './spec/round_helper'

feature 'play again' do
  scenario 'clicking on "play again" link will redirect player to play page' do
    sign_in
    click_button 'Rock'
    click_link 'PLAY AGAIN'
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
