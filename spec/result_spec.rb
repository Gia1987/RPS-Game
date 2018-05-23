require './spec/spec_helper'
require './lib/result'

describe Game do

  context '#result' do
    it 'returns the winner' do
      #arrange
      player = 'Rock'
      pc_weapon = 'Paper'
      #assert
      expect(Game.result(player,pc_weapon)).to eq 'You Lose'
    end
  end
end
