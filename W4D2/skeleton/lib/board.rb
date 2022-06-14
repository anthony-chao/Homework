require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }

    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each.with_index do |ele, idx|
      if idx != 6 && idx != 13
        @cups[idx] = [:stone, :stone, :stone, :stone]
      end
    end
  end

  def valid_move?(start_pos)
    if !start_pos.between?(0, 13)
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    
  end

  def make_move(start_pos, current_player_name)
    popped = @cups[start_pos].pop(100)
    i = 1
    ending_idx = (start_pos + popped.length) % 14

    until popped.empty?
      if current_player_name == @name1
        @cups[(start_pos + i) % 14].push(popped.shift) unless (start_pos + i) % 14 == 13
      else
        @cups[(start_pos + i) % 14].push(popped.shift) unless (start_pos + i) % 14 == 6
      end
      i += 1
    end

    render
    next_turn(ending_idx)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
      if ending_cup_idx == 6 || ending_cup_idx == 13
        :prompt
      elsif @cups[ending_cup_idx].length == 1   #I don't get why it's equal to 1? Why doesn't .empty? work?
        :switch
      else
        return ending_cup_idx
      end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0...6].all? { |ele| ele.empty? } || @cups[7...13].all? { |ele| ele.empty?  }
      return true
    # elsif !@cups[6].empty? && !@cups[13].empty?
    #   return false
    else
      return false
    end

  end

  def winner


  end
end
