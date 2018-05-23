require './spec/spec_helper'
require './spec/round_helper'

feature 'winner ' do
  scenario 'returns the winner' do
    round
    expect(page).to have_content("Giacomo chosen:\nRock\nPC chosen:\nRock\nIs a Draw")
  end
end
