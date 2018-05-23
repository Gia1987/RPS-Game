class Game

  def self.result(player, pc)
    if player == pc
      'Is a Draw'
    elsif player == 'Rock' && pc == 'Paper' ||
          player == 'Paper' && pc == 'Scissors' ||
          player == 'Scissors' && pc == 'Rock'
          'You Lose'
    else
      'You Won'
    end
  end
end
