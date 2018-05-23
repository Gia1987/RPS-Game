class Game
  attr_reader :player_score, :pc_score

  def initialize
    @player_score = 0
    @pc_score = 0
    @res = 'Is a Draw'
  end

  def result(player, pc)
    if player == pc
      @res = 'Is a Draw'
    elsif player == 'Rock' && pc == 'Paper' ||
          player == 'Paper' && pc == 'Scissors' ||
          player == 'Scissors' && pc == 'Rock'
      @res = 'You Lose'
    else
      @res = 'You Won'
    end
    score
    return @res
  end

  def score
    if @res == 'You Lose'
      @pc_score += 1
    elsif @res == 'You Won'
      @player_score += 1
    end
  end
end
