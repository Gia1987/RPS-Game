require './spec/spec_helper'
require './lib/pc_choice'

describe AI do
  subject(:ai) { described_class.new }
  context '#move' do
    it 'choice from an array of weapons' do
      # arrange
      srand(0) #  mock computer to choice Rock
      # assert
      expect(ai.move).to eq 'Rock'
    end
  end
end
