require './spec/spec_helper'
require './spec/sign_in_helper'

feature 'Nick name' do
  scenario 'player can enter own name' do
    sign_in
    expect(page).to have_content("Giacomo")
  end
end
