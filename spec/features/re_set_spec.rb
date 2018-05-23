require './spec/spec_helper'
require './spec/round_helper'

feature 're-set' do
  scenario 'clicking on "re-set" player can restart the game' do
    round
    click_on 'RESET'
    expect(page).to have_field
    expect(page).to have_button
  end
end
