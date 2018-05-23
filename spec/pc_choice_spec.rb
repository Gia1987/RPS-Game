require './spec/spec_helper'
require './lib/pc_choice'

describe AI do

  context '#move' do
    it 'choice from an array of weapons' do
      # arrange
      srand(0)
      # assert
      expect(AI.move).to eq 'Rock'
    end
  end
end
