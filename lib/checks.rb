require './lib/grid.rb'

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
    z = place[1].to_i
    if direction == "horizontal"
      return false if y[x..x + length].include?("X") ; true
    elsif direction == "vertical"
       return false if @board_check.player_one_board[1..-1].transpose[x][z..z + length].include?("X") ; true
    end
  end

  def clashes_two(place, direction, length)
    x = @board_check.x_coord[place.chop.upcase]
    y = @board_check.player_two_board[place[1].to_i + 1]
    z = place[1].to_i
    if direction == "horizontal"
      return false if y[x..x + length].include?("X") ; true
    elsif direction == "vertical"
       return false if @board_check.player_two_board[1..-1].transpose[x][z..z + length].include?("X") ; true
    end
  end

  def hit_one(place)
    if @board_check.player_one_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] ==  "~"
      @board_check.player_one_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] = "0"
    elsif
      @board_check.player_one_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] =="X"
      @board_check.player_one_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] = "@"
    end
  end

  def hit_two(place)
    if @board_check.player_two_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] ==  "~"
      @board_check.player_two_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] = "0"
    elsif
      @board_check.player_two_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] =="X"
      @board_check.player_two_board[place[1].to_i + 1][@board_check.x_coord[place.chop.upcase]] = "@"
    end
  end


end

def new_game
  Players.new
end
