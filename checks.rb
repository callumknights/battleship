require 'grid'

class Players

  attr_reader :board_check

  def initialize

    @board_check = Boards.new

  end

  def boundary(place, direction, length)
    if direction == "horizontal"
      return false if @board_check.x_coord[place.chop.upcase] >= 12 - length ; true
    elsif direction == "vertical"
      return false if place[1].to_i + 1 >= 12 - length ; true
    end
  end

  def clashes_one(place, direction, length)
    x = @board_check.x_coord[place.chop.upcase]
    y = @board_check.player_one_board[place[1].to_i + 1]
    if direction == "horizontal"
      return false if y[x..x + length].include?("X") ; true
    elsif direction == "vertical"
       return false if @board_check.player_one_board[1..-1].transpose[@board_check.x_coord[place.chop.upcase]].include?("X") ; true
    end
  end

  def clashes_two(place, direction, length)
    x = @board_check.x_coord[place.chop.upcase]
    y = @board_check.player_two_board[place[1].to_i + 1]
    if direction == "horizontal"
      return false if y[x..x + length].include?("X") ; true
    elsif direction == "vertical"
       return false if @board_check.player_two_board[1..-1].transpose[@board_check.x_coord[place.chop.upcase]].include?("X") ; true
    end
  end


end
