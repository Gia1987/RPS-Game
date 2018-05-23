require './spec/spec_helper'
require './lib/game'

describe Game do
  subject(:game) {described_class.new}

  context '#result' do
    it 'returns the winner' do
      #arrange
      player = 'Rock'
      pc_weapon = 'Paper'
      #assert
      expect(game.result(player,pc_weapon)).to eq 'You Lose'
    end
  end

  context '#score' do
    it'increment pc_score' do
      #arrange
      game.result('Rock','Paper')
      game.score
      #assert
      expect(game.pc_score).to eq 1
    end

    it'increment player_score' do
      #arrange
      game.result('Paper','Rock')
      game.score
      #assert
      expect(game.player_score).to eq 1
    end
  end
end
