# AI class manage the behaviour of the computer choice
class AI

  def initialize
    @weapon = ['Rock', 'Paper', 'Scissors']
  end

  def move
    @weapon[rand(0..2)] # computer random choice
  end
end
