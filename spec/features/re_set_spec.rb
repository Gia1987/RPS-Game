require './spec/spec_helper'
require './spec/round_helper'

feature 're-set' do
  scenario 'clicking on "re-set" player can restart the game' do
    sign_in #  mock user to sign_in
    click_button 'Rock'
    click_link 'RESET'
    expect(page).to have_field
    expect(page).to have_button
  end
end
