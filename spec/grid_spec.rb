require './lib/grid'
require './lib/checks'
require './lib/game'

describe Boards do

  let!(:boards) {Boards.new}


  it 'can add player one aircraft carrier horizontal' do
#    boards = Boards.new
    boards.add_aircraft_carrier_one("f4", "horizontal")
    expect(boards.player_one_board[5][6]).to eql("X")
    expect(boards.player_one_board[5][7]).to eql("X")
    expect(boards.player_one_board[5][8]).to eql("X")
    expect(boards.player_one_board[5][9]).to eql("X")
    expect(boards.player_one_board[5][10]).to eql("X")
  end
  it 'can add player one aircraft carrier horizontal' do
#    boards = Boards.new
    boards.add_aircraft_carrier_one("c2", "horizontal")
    expect(boards.player_one_board[3][3]).to eql("X")
    expect(boards.player_one_board[3][4]).to eql("X")
    expect(boards.player_one_board[3][5]).to eql("X")
    expect(boards.player_one_board[3][6]).to eql("X")
    expect(boards.player_one_board[3][7]).to eql("X")
  end
  it 'can add player one aircraft carrier vertical' do
#    boards = Boards.new
    boards.add_aircraft_carrier_one("c2", "vertical")
    expect(boards.player_one_board[3][3]).to eql("X")
    expect(boards.player_one_board[4][3]).to eql("X")
    expect(boards.player_one_board[5][3]).to eql("X")
    expect(boards.player_one_board[6][3]).to eql("X")
    expect(boards.player_one_board[7][3]).to eql("X")
  end
  it 'can add player one aircraft carrier vertical' do
#    boards = Boards.new
    boards.add_aircraft_carrier_one("d5", "vertical")
    expect(boards.player_one_board[6][4]).to eql("X")
    expect(boards.player_one_board[7][4]).to eql("X")
    expect(boards.player_one_board[8][4]).to eql("X")
    expect(boards.player_one_board[9][4]).to eql("X")
    expect(boards.player_one_board[10][4]).to eql("X")
  end
  it 'can add player one battleship horizontal' do
#    boards = Boards.new
    boards.add_battleship_one("b5", "horizontal")
    expect(boards.player_one_board[6][2]).to eql("X")
    expect(boards.player_one_board[6][3]).to eql("X")
    expect(boards.player_one_board[6][4]).to eql("X")
    expect(boards.player_one_board[6][5]).to eql("X")
  end
  it 'can add player one battleship vertical' do
#    boards = Boards.new
    boards.add_battleship_one("b5", "vertical")
    expect(boards.player_one_board[6][2]).to eql("X")
    expect(boards.player_one_board[7][2]).to eql("X")
    expect(boards.player_one_board[8][2]).to eql("X")
    expect(boards.player_one_board[9][2]).to eql("X")
  end
  it 'can add player one submarine horizontal' do
#    boards = Boards.new
    boards.add_submarine_one("c7", "horizontal")
    expect(boards.player_one_board[8][3]).to eql("X")
    expect(boards.player_one_board[8][4]).to eql("X")
    expect(boards.player_one_board[8][5]).to eql("X")
  end
  it 'can add player one submarine vertical' do
#    boards = Boards.new
    boards.add_submarine_one("c7", "vertical")
    expect(boards.player_one_board[8][3]).to eql("X")
    expect(boards.player_one_board[9][3]).to eql("X")
    expect(boards.player_one_board[10][3]).to eql("X")
  end
  it 'can add player one destroyer horizontal' do
#    boards = Boards.new
    boards.add_destroyer_one("g8", "horizontal")
    expect(boards.player_one_board[9][7]).to eql("X")
    expect(boards.player_one_board[9][8]).to eql("X")
    expect(boards.player_one_board[9][9]).to eql("X")
  end
  it 'can add player one destroyer vertical' do
#    boards = Boards.new
    boards.add_destroyer_one("g8", "vertical")
    expect(boards.player_one_board[9][7]).to eql("X")
    expect(boards.player_one_board[10][7]).to eql("X")
    expect(boards.player_one_board[11][7]).to eql("X")
  end
  it 'can add player one patrol horizontal' do
#    boards = Boards.new
    boards.add_patrol_one("h4", "horizontal")
    expect(boards.player_one_board[5][8]).to eql("X")
    expect(boards.player_one_board[5][9]).to eql("X")
  end
  it 'can add player one patrol vertical' do
#    boards = Boards.new
    boards.add_patrol_one("h4", "vertical")
    expect(boards.player_one_board[5][8]).to eql("X")
    expect(boards.player_one_board[6][8]).to eql("X")
  end
  it 'can add player two aircraft carrier horizontal' do
#    boards = Boards.new
    boards.add_aircraft_carrier_two("f4", "horizontal")
    expect(boards.player_two_board[5][6]).to eql("X")
    expect(boards.player_two_board[5][7]).to eql("X")
    expect(boards.player_two_board[5][8]).to eql("X")
    expect(boards.player_two_board[5][9]).to eql("X")
    expect(boards.player_two_board[5][10]).to eql("X")
  end
  it 'can add player two aircraft carrier horizontal' do
#    boards = Boards.new
    boards.add_aircraft_carrier_two("c2", "horizontal")
    expect(boards.player_two_board[3][3]).to eql("X")
    expect(boards.player_two_board[3][4]).to eql("X")
    expect(boards.player_two_board[3][5]).to eql("X")
    expect(boards.player_two_board[3][6]).to eql("X")
    expect(boards.player_two_board[3][7]).to eql("X")
  end
  it 'can add player two aircraft carrier vertical' do
#    boards = Boards.new
    boards.add_aircraft_carrier_two("c2", "vertical")
    expect(boards.player_two_board[3][3]).to eql("X")
    expect(boards.player_two_board[4][3]).to eql("X")
    expect(boards.player_two_board[5][3]).to eql("X")
    expect(boards.player_two_board[6][3]).to eql("X")
    expect(boards.player_two_board[7][3]).to eql("X")
  end
  it 'can add player two aircraft carrier vertical' do
#    boards = Boards.new
    boards.add_aircraft_carrier_two("d5", "vertical")
    expect(boards.player_two_board[6][4]).to eql("X")
    expect(boards.player_two_board[7][4]).to eql("X")
    expect(boards.player_two_board[8][4]).to eql("X")
    expect(boards.player_two_board[9][4]).to eql("X")
    expect(boards.player_two_board[10][4]).to eql("X")
  end
  it 'can add player two battleship horizontal' do
#    boards = Boards.new
    boards.add_battleship_two("b5", "horizontal")
    expect(boards.player_two_board[6][2]).to eql("X")
    expect(boards.player_two_board[6][3]).to eql("X")
    expect(boards.player_two_board[6][4]).to eql("X")
    expect(boards.player_two_board[6][5]).to eql("X")
  end
  it 'can add player two battleship vertical' do
#    boards = Boards.new
    boards.add_battleship_two("b5", "vertical")
    expect(boards.player_two_board[6][2]).to eql("X")
    expect(boards.player_two_board[7][2]).to eql("X")
    expect(boards.player_two_board[8][2]).to eql("X")
    expect(boards.player_two_board[9][2]).to eql("X")
  end
  it 'can add player two submarine horizontal' do
#    boards = Boards.new
    boards.add_submarine_two("c7", "horizontal")
    expect(boards.player_two_board[8][3]).to eql("X")
    expect(boards.player_two_board[8][4]).to eql("X")
    expect(boards.player_two_board[8][5]).to eql("X")
  end
  it 'can add player two submarine vertical' do
#    boards = Boards.new
    boards.add_submarine_two("c7", "vertical")
    expect(boards.player_two_board[8][3]).to eql("X")
    expect(boards.player_two_board[9][3]).to eql("X")
    expect(boards.player_two_board[10][3]).to eql("X")
  end
  it 'can add player two destroyer horizontal' do
#    boards = Boards.new
    boards.add_destroyer_two("g8", "horizontal")
    expect(boards.player_two_board[9][7]).to eql("X")
    expect(boards.player_two_board[9][8]).to eql("X")
    expect(boards.player_two_board[9][9]).to eql("X")
  end
  it 'can add player two destroyer vertical' do
#    boards = Boards.new
    boards.add_destroyer_two("g8", "vertical")
    expect(boards.player_two_board[9][7]).to eql("X")
    expect(boards.player_two_board[10][7]).to eql("X")
    expect(boards.player_two_board[11][7]).to eql("X")
  end
  it 'can add player two patrol horizontal' do
#    boards = Boards.new
    boards.add_patrol_two("h4", "horizontal")
    expect(boards.player_two_board[5][8]).to eql("X")
    expect(boards.player_two_board[5][9]).to eql("X")
  end
  it 'can add player two patrol vertical' do
#    boards = Boards.new
    boards.add_patrol_two("h4", "vertical")
    expect(boards.player_two_board[5][8]).to eql("X")
    expect(boards.player_two_board[6][8]).to eql("X")
  end
end

describe Players do
  let! (:players) {Players.new}
#  let! (:boards) {Boards.new}

  it 'can check player one boundary g4' do
  #  players = PLayers.new
    expect(players.boundary("g4", "horizontal", 5)).to eql(false)
  end

  it 'can check player one boundary h4' do
    expect(players.boundary("h4", "horizontal", 5)).to eql(false)
  end

  it 'can check player one clash' do
    players.board_check.add_destroyer_one("h4", "horizontal")
    #players.add_destroyer_one("h4", "horizontal")
    expect(players.board_check.player_one_board[5][8]).to eql("X")
    expect(players.board_check.player_one_board[5][9]).to eql("X")
    expect(players.board_check.player_one_board[5][10]).to eql("X")
    expect(players.clashes_one("h4", "horizontal", 3)).to eql(false)
  end
  it 'can check player one clash' do
    players.board_check.add_aircraft_carrier_one("c4", "horizontal")
    #players.add_destroyer_one("h4", "horizontal")
    expect(players.board_check.player_one_board[5][3]).to eql("X")
    expect(players.board_check.player_one_board[5][4]).to eql("X")
    expect(players.board_check.player_one_board[5][5]).to eql("X")
    expect(players.board_check.player_one_board[5][6]).to eql("X")
    expect(players.board_check.player_one_board[5][7]).to eql("X")
    expect(players.clashes_one("c4", "horizontal", 5)).to eql(false)
  end
  it 'can check player one clash' do
    players.board_check.add_destroyer_one("h4", "vertical")
    expect(players.board_check.player_one_board[5][8]).to eql("X")
    expect(players.board_check.player_one_board[6][8]).to eql("X")
    expect(players.board_check.player_one_board[7][8]).to eql("X")
    expect(players.clashes_one("h4", "vertical", 3)).to eql(false)
  end
  it 'can check player one clash' do
    players.board_check.add_aircraft_carrier_one("c4", "vertical")
    #players.add_destroyer_one("h4", "horizontal")
    expect(players.board_check.player_one_board[5][3]).to eql("X")
    expect(players.board_check.player_one_board[6][3]).to eql("X")
    expect(players.board_check.player_one_board[7][3]).to eql("X")
    expect(players.board_check.player_one_board[8][3]).to eql("X")
    expect(players.board_check.player_one_board[9][3]).to eql("X")
    expect(players.clashes_one("c4", "vertical", 5)).to eql(false)
  end
  it 'can change ~ to 0 when missed player one' do
    players.hit_one("a4")
    expect(players.board_check.player_one_board[5][1]).to eql("0")
  end
  it 'can change X to @ when hit player one' do
    players.board_check.add_aircraft_carrier_one("c3", "horizontal")
    players.hit_one("d3")
    expect(players.board_check.player_one_board[4][4]).to eql("@")
  end
  it 'can change ~ to 0 when hit player two' do
    players.hit_two("d3")
    expect(players.board_check.player_two_board[4][4]).to eql("0")
  end
  it 'can change X to @ when hit player two' do
    players.board_check.add_aircraft_carrier_two("c3", "horizontal")
    players.hit_two("d3")
    expect(players.board_check.player_two_board[4][4]).to eql("@")
  end

end

=begin
describe Execute do
  let! (:execute) {Execute.new}

  it 'can print formatted player one board' do
    expect(execute.show_player_one_board).to eql(false)
  end
end
=end
