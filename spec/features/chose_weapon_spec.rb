require './spec/spec_helper'
require './spec/sign_in_helper'

feature ' chose a weapons' do
  scenario 'player can see a list of weapons' do
    sign_in
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
  scenario 'player choosen own weapon' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content("Rock")
  end
  scenario 'AI choosen own weapon' do
    srand(0)
    sign_in
    click_button 'Rock'
    expect(page).to have_content("Rock")
  end
end
