require 'grid'

describe Boards do
  it 'can add player one aircraft carrier horizontal' do
    boards = Boards.new
    boards.add_aircraft_carrier_one("f4", "horizontal")
    expect(boards.player_one_board[5][6]).to eql("X")
    expect(boards.player_one_board[5][7]).to eql("X")
    expect(boards.player_one_board[5][8]).to eql("X")
    expect(boards.player_one_board[5][9]).to eql("X")
    expect(boards.player_one_board[5][10]).to eql("X")
  end
  it 'can add player one aircraft carrier horizontal' do
    boards = Boards.new
    boards.add_aircraft_carrier_one("c2", "horizontal")
    expect(boards.player_one_board[3][3]).to eql("X")
    expect(boards.player_one_board[3][4]).to eql("X")
    expect(boards.player_one_board[3][5]).to eql("X")
    expect(boards.player_one_board[3][6]).to eql("X")
    expect(boards.player_one_board[3][7]).to eql("X")
  end
  it 'can add player one aircraft carrier vertical' do
    boards = Boards.new
    boards.add_aircraft_carrier_one("c2", "vertical")
    expect(boards.player_one_board[3][3]).to eql("X")
    expect(boards.player_one_board[4][3]).to eql("X")
    expect(boards.player_one_board[5][3]).to eql("X")
    expect(boards.player_one_board[6][3]).to eql("X")
    expect(boards.player_one_board[7][3]).to eql("X")
  end
  it 'can add player one aircraft carrier vertical' do
    boards = Boards.new
    boards.add_aircraft_carrier_one("d5", "vertical")
    expect(boards.player_one_board[6][4]).to eql("X")
    expect(boards.player_one_board[7][4]).to eql("X")
    expect(boards.player_one_board[8][4]).to eql("X")
    expect(boards.player_one_board[9][4]).to eql("X")
    expect(boards.player_one_board[10][4]).to eql("X")
  end
  it 'can add player one battleship horizontal' do
    boards = Boards.new
    boards.add_battleship_one("b5", "horizontal")
    expect(boards.player_one_board[6][2]).to eql("X")
    expect(boards.player_one_board[6][3]).to eql("X")
    expect(boards.player_one_board[6][4]).to eql("X")
    expect(boards.player_one_board[6][5]).to eql("X")
  end
  it 'can add player one battleship vertical' do
    boards = Boards.new
    boards.add_battleship_one("b5", "vertical")
    expect(boards.player_one_board[6][2]).to eql("X")
    expect(boards.player_one_board[7][2]).to eql("X")
    expect(boards.player_one_board[8][2]).to eql("X")
    expect(boards.player_one_board[9][2]).to eql("X")
  end
  it 'can add player one submarine horizontal' do
    boards = Boards.new
    boards.add_submarine_one("c7", "horizontal")
    expect(boards.player_one_board[8][3]).to eql("X")
    expect(boards.player_one_board[8][4]).to eql("X")
    expect(boards.player_one_board[8][5]).to eql("X")
  end
  it 'can add player one submarine vertical' do
    boards = Boards.new
    boards.add_submarine_one("c7", "vertical")
    expect(boards.player_one_board[8][3]).to eql("X")
    expect(boards.player_one_board[9][3]).to eql("X")
    expect(boards.player_one_board[10][3]).to eql("X")
  end
  it 'can add player one destroyer horizontal' do
    boards = Boards.new
    boards.add_destroyer_one("g8", "horizontal")
    expect(boards.player_one_board[9][7]).to eql("X")
    expect(boards.player_one_board[9][8]).to eql("X")
    expect(boards.player_one_board[9][9]).to eql("X")
  end
  it 'can add player one destroyer vertical' do
    boards = Boards.new
    boards.add_destroyer_one("g8", "vertical")
    expect(boards.player_one_board[9][7]).to eql("X")
    expect(boards.player_one_board[10][7]).to eql("X")
    expect(boards.player_one_board[11][7]).to eql("X")
  end
  it 'can add player one patrol horizontal' do
    boards = Boards.new
    boards.add_destroyer_one("h4", "horizontal")
    expect(boards.player_one_board[5][8]).to eql("X")
    expect(boards.player_one_board[5][9]).to eql("X")
  end
  it 'can add player one patrol vertical' do
    boards = Boards.new
    boards.add_destroyer_one("h4", "vertical")
    expect(boards.player_one_board[5][8]).to eql("X")
    expect(boards.player_one_board[6][8]).to eql("X")
  end
  it 'can add player two aircraft carrier horizontal' do
    boards = Boards.new
    boards.add_aircraft_carrier_two("f4", "horizontal")
    expect(boards.player_two_board[5][6]).to eql("X")
    expect(boards.player_two_board[5][7]).to eql("X")
    expect(boards.player_two_board[5][8]).to eql("X")
    expect(boards.player_two_board[5][9]).to eql("X")
    expect(boards.player_two_board[5][10]).to eql("X")
  end
  it 'can add player two aircraft carrier horizontal' do
    boards = Boards.new
    boards.add_aircraft_carrier_two("c2", "horizontal")
    expect(boards.player_two_board[3][3]).to eql("X")
    expect(boards.player_two_board[3][4]).to eql("X")
    expect(boards.player_two_board[3][5]).to eql("X")
    expect(boards.player_two_board[3][6]).to eql("X")
    expect(boards.player_two_board[3][7]).to eql("X")
  end
  it 'can add player two aircraft carrier vertical' do
    boards = Boards.new
    boards.add_aircraft_carrier_two("c2", "vertical")
    expect(boards.player_two_board[3][3]).to eql("X")
    expect(boards.player_two_board[4][3]).to eql("X")
    expect(boards.player_two_board[5][3]).to eql("X")
    expect(boards.player_two_board[6][3]).to eql("X")
    expect(boards.player_two_board[7][3]).to eql("X")
  end
  it 'can add player two aircraft carrier vertical' do
    boards = Boards.new
    boards.add_aircraft_carrier_two("d5", "vertical")
    expect(boards.player_two_board[6][4]).to eql("X")
    expect(boards.player_two_board[7][4]).to eql("X")
    expect(boards.player_two_board[8][4]).to eql("X")
    expect(boards.player_two_board[9][4]).to eql("X")
    expect(boards.player_two_board[10][4]).to eql("X")
  end
  it 'can add player two battleship horizontal' do
    boards = Boards.new
    boards.add_battleship_two("b5", "horizontal")
    expect(boards.player_two_board[6][2]).to eql("X")
    expect(boards.player_two_board[6][3]).to eql("X")
    expect(boards.player_two_board[6][4]).to eql("X")
    expect(boards.player_two_board[6][5]).to eql("X")
  end
  it 'can add player two battleship vertical' do
    boards = Boards.new
    boards.add_battleship_two("b5", "vertical")
    expect(boards.player_two_board[6][2]).to eql("X")
    expect(boards.player_two_board[7][2]).to eql("X")
    expect(boards.player_two_board[8][2]).to eql("X")
    expect(boards.player_two_board[9][2]).to eql("X")
  end
  it 'can add player two submarine horizontal' do
    boards = Boards.new
    boards.add_submarine_two("c7", "horizontal")
    expect(boards.player_two_board[8][3]).to eql("X")
    expect(boards.player_two_board[8][4]).to eql("X")
    expect(boards.player_two_board[8][5]).to eql("X")
  end
  it 'can add player two submarine vertical' do
    boards = Boards.new
    boards.add_submarine_two("c7", "vertical")
    expect(boards.player_two_board[8][3]).to eql("X")
    expect(boards.player_two_board[9][3]).to eql("X")
    expect(boards.player_two_board[10][3]).to eql("X")
  end
  it 'can add player two destroyer horizontal' do
    boards = Boards.new
    boards.add_destroyer_two("g8", "horizontal")
    expect(boards.player_two_board[9][7]).to eql("X")
    expect(boards.player_two_board[9][8]).to eql("X")
    expect(boards.player_two_board[9][9]).to eql("X")
  end
  it 'can add player two destroyer vertical' do
    boards = Boards.new
    boards.add_destroyer_two("g8", "vertical")
    expect(boards.player_two_board[9][7]).to eql("X")
    expect(boards.player_two_board[10][7]).to eql("X")
    expect(boards.player_two_board[11][7]).to eql("X")
  end
  it 'can add player two patrol horizontal' do
    boards = Boards.new
    boards.add_destroyer_two("h4", "horizontal")
    expect(boards.player_two_board[5][8]).to eql("X")
    expect(boards.player_two_board[5][9]).to eql("X")
  end
  it 'can add player two patrol vertical' do
    boards = Boards.new
    boards.add_destroyer_two("h4", "vertical")
    expect(boards.player_two_board[5][8]).to eql("X")
    expect(boards.player_two_board[6][8]).to eql("X")
  end
end
