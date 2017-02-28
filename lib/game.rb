require 'checks'

class Execute

  attr_reader :board_check

  def initialize

    @players_game = Players.new

  end

  def show_player_one_board
    cop = @players_game.board_check.player_one_board.map {|x| x.join(' ') }
    puts cop
    #puts @players_game.board_check.player_one_board
  end
end
