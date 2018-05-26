class Game
  attr_reader :player_score, :pc_score

  def initialize
    @player_score = 0
    @pc_score = 0
  end

  def result(player, pc)
    condition = (player == 'Rock' && pc == 'Paper') ||
                (player == 'Paper' && pc == 'Scissors') ||
                (player == 'Scissors' && pc == 'Rock')
    return @res = 'Is a Draw' if player == pc
    condition ? @res = 'You Lose' : @res = 'You Win'
    score && @res
  end

  def score
    return @pc_score += 1 if @res == 'You Lose'
    return @player_score += 1 if @res == 'You Win'
  end
end
