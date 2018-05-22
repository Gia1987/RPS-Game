require './spec/spec_helper'
require './spec/sign_in_helper'

feature 'choose a weapon ' do
  scenario 'player choose own weapon' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content("Giacomo chosen:\nRock")
  end
end
