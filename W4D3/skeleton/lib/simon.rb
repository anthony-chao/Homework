class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    self.take_turn until self.game_over == true
    if self.game_over == true
      self.game_over_message
      self.reset_game
    end
  end

  def take_turn
    self.require_sequence

    if self.game_over == true
      game_over_message
    else
      round_success_message
      self.show_sequence
      self.sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    p "enter the color sequence you saw"
    user_answer = gets.chomp
    user_answer.split(" ")
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    p "you completed the round!"
  end

  def game_over_message
    p "game over! you lost!"
  end

  def reset_game
    self.sequence_length = 1
    self.seq = []
    self.game_over = false
  end
end
