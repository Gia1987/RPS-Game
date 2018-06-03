# Game class manage the points and winning condition
class Game
  attr_reader :player_score, :pc_score

  def initialize
    @player_score = 0
    @pc_score = 0
  end

  def result(player, pc)
    condition = (player == 'Rock' && pc == 'Paper') ||
                (player == 'Paper' && pc == 'Scissors') ||
                (player == 'Scissors' && pc == 'Rock') # winning conditions
    return @res = "It's a Draw" if player == pc
    condition ? @res = 'You Lose' : @res = 'You Win'
    score # call method score to icrease the points
    @res # returns result
  end

  def score
    @pc_score += 1 if @res == 'You Lose' # pc_score rising by 1 if wins
    @player_score += 1 if @res == 'You Win' # player_score rising by 1 if wins
  end
end
