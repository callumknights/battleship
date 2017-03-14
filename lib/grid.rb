
class Boards

  attr_reader :player_one_board, :player_two_board, :coord_translate, :ships
  def initialize
    @player_one_board = [
                    ["---PLAYER ONE BATTLEFIELD---", "-"],
      ["  ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"],
      [" 1", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 2", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 3", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 4", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 5", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 6", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 7", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 8", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 9", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      ["10", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
    ]
    @player_two_board = [
                    ["---PLAYER TWO BATTLEFIELD---", "-"],
      ["  ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"],
      [" 1", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 2", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 3", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 4", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 5", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 6", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 7", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 8", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      [" 9", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
      ["10", "~", "~", "~", "~", "~", "~", "~", "~", "~", "~"],
    ]

    @coord_translate = { "A" => 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5,
                         "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J" => 10
                          }
    @ships = { "aircraft_carrier" => ["X","X","X","X","X"],
               "battleship" => ["X","X","X","X"],
               "destroyer" => ["X","X","X"],
               "submarine" => ["X","X","X"],
               "patrol_boat" => ["X","X"]
             }
  end


  def add_aircraft_carrier_one(place, orientation)
    if orientation == "horizontal"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 3] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 4] = "X"
    else
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 4][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 5][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_battleship_one(place, orientation)
    if orientation == "horizontal"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 3] = "X"
    else
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 4][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_destroyer_one(place, orientation)
    if orientation == "horizontal"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
    else
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_submarine_one(place, orientation)
    if orientation == "horizontal"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
    else
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_patrol_one(place, orientation)
    if orientation == "horizontal"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
    else
      @player_one_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_one_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_aircraft_carrier_two(place, orientation)
    if orientation == "horizontal"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 3] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 4] = "X"
    else
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 4][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 5][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_battleship_two(place, orientation)
    if orientation == "horizontal"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 3] = "X"
    else
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 4][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_destroyer_two(place, orientation)
    if orientation == "horizontal"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
    else
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_submarine_two(place, orientation)
    if orientation == "horizontal"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 2] = "X"
    else
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 3][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def add_patrol_two(place, orientation)
    if orientation == "horizontal"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase] + 1] = "X"
    else
      @player_two_board[place[1..-1].to_i + 1][@coord_translate[place.chop.upcase]] = "X"
      @player_two_board[place[1..-1].to_i + 2][@coord_translate[place.chop.upcase]] = "X"
    end
  end

  def x_coord
    @coord_translate
  end


end
