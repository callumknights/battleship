require './lib/checks.rb'

    @game = new_game

def show_player_one_board
  disp = @game.board_check.player_one_board.map {|x| x.join(' ') }
  puts disp
end

def show_player_two_board
  disp = @game.board_check.player_two_board.map {|x| x.join(' ') }
  puts disp
end

def show_opponent_one
  disp = @game.board_check.player_two_board.map {|x| x.join(' ') }
  disp.each {|x| x.gsub!("X","~")}
  puts disp
end

def show_opponent_two
  disp = @game.board_check.player_one_board.map {|x| x.join(' ') }
  disp.each {|x| x.gsub!("X","~")}
  puts disp
end

def game_cycle
  puts "\n\tHello #{@playerone}, this is your opponents board..."
  show_opponent_one
  sleep(2)
  puts "\n\tNow #{@playerone}, where would you like to aim your guns?"
  print "\n\t>>>"
  aim_one = $stdin.gets.chomp
  @game.hit_two(aim_one)
  show_opponent_one
  sleep(2)
  exit(0) if @game.board_check.player_two_board.flatten.include?("X") == false
  puts "\n\tPlease pass the computer to #{@playertwo} after this
  \tmessage disappears."
  sleep(2)
  puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
  sleep(4)
  puts "\n\tHello #{@playertwo}, this is your opponents board."
  show_opponent_two
  sleep(2)
  puts "\n\tNow #{@playertwo}, where would you like to aim your guns?"
  print "\n\t>>>"
  aim_two = $stdin.gets.chomp
  @game.hit_one(aim_two)
  show_opponent_two
  sleep(2)
  exit(0) if @game.board_check.player_one_board.flatten.include?("X") == false
  puts "\n\tPlease pass the computer to #{@playerone} after this
  \tmessage dissapears."
  sleep(2)
  puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
  sleep(4)
end

def place_aircraft_one
  puts "\n\tNow #{@playerone}, where would you like to place your
  \taircraft carrier?"
  print "\n\t>>>"
  aircraft_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your aircraft
  \tcarrier to face on the board?"
  print "\n\t>>>"
  aircraft_orientation = $stdin.gets.chomp
  if (@game.boundary(aircraft_place, aircraft_orientation, 5) && @game.clashes_one(aircraft_place, aircraft_orientation, 5)) == true
    @game.board_check.add_aircraft_carrier_one(aircraft_place, aircraft_orientation)
  else
    puts "\n\tSorry #{@playerone}, you cant place that ship there..."
    place_aircraft_one
  end
end

def place_battleship_one
  puts "\n\tNow #{@playerone}, where would you like to place your
  \tbattleship?"
  print "\n\t>>>"
  battleship_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your battleship
  \tto face on the board?"
  print "\n\t>>>"
  battleship_orientation = $stdin.gets.chomp
  if (@game.boundary(battleship_place, battleship_orientation, 4) && @game.clashes_one(battleship_place, battleship_orientation, 4)) == true
    @game.board_check.add_battleship_one(battleship_place, battleship_orientation)
  else
    puts "\n\tSorry #{@playerone}, you cant place that ship there..."
    place_battleship_one
  end
end

def place_destroyer_one
  puts "\n\tNow #{@playerone}, where would you like to place your
  \tdestroyer?"
  print "\n\t>>>"
  destroyer_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your destroyer
  \tto face on the board?"
  print "\n\t>>>"
  destroyer_orientation = $stdin.gets.chomp
  if (@game.boundary(destroyer_place, destroyer_orientation, 3) && @game.clashes_one(destroyer_place, destroyer_orientation, 3)) == true
    @game.board_check.add_destroyer_one(destroyer_place, destroyer_orientation)
  else
    puts "\n\tSorry #{@playerone}, you cant place that ship there..."
    place_destroyer_one
  end
end

def place_submarine_one
  puts "\n\tNow #{@playerone}, where would you like to place your
  \tsubmarine?"
  print "\n\t>>>"
  submarine_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your submarine
  \tto face on the board?"
  print "\n\t>>>"
  submarine_orientation = $stdin.gets.chomp
  if (@game.boundary(submarine_place, submarine_orientation, 3) && @game.clashes_one(submarine_place, submarine_orientation, 3)) == true
    @game.board_check.add_submarine_one(submarine_place, submarine_orientation)
  else
    puts "\n\tSorry #{@playerone}, you cant place that ship there..."
    place_submarine_one
  end
end

def place_patrol_one
  puts "\n\tNow #{@playerone}, where would you like to place your
  \tpatrol boat?"
  print "\n\t>>>"
  patrol_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your patrol
  \tboat to face on the board?"
  print "\n\t>>>"
  patrol_orientation = $stdin.gets.chomp
  if (@game.boundary(patrol_place, patrol_orientation, 2) && @game.clashes_one(patrol_place, patrol_orientation, 2)) == true
    @game.board_check.add_patrol_one(patrol_place, patrol_orientation)
  else
    puts "\n\tSorry #{@playerone}, you cant place that ship there..."
    place_patrol_one
  end
end

def place_aircraft_two
  puts "\n\tNow #{@playertwo}, where would you like to place your
  \taircraft carrier?"
  print "\n\t>>>"
  aircraft_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your aircraft
  \tcarrier to face on the board?"
  print "\n\t>>>"
  aircraft_orientation = $stdin.gets.chomp
  if (@game.boundary(aircraft_place, aircraft_orientation, 5) && @game.clashes_two(aircraft_place, aircraft_orientation, 5)) == true
    @game.board_check.add_aircraft_carrier_two(aircraft_place, aircraft_orientation)
  else
    puts "\n\tSorry #{@playertwo}, you cant place that ship there..."
    place_aircraft_two
  end
end

def place_battleship_two
  puts "\n\tNow #{@playertwo}, where would you like to place your
  \tbattleship?"
  print "\n\t>>>"
  battleship_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your battleship
  \tto face on the board?"
  print "\n\t>>>"
  battleship_orientation = $stdin.gets.chomp
  if (@game.boundary(battleship_place, battleship_orientation, 4) && @game.clashes_two(battleship_place, battleship_orientation, 4)) == true
    @game.board_check.add_battleship_two(battleship_place, battleship_orientation)
  else
    puts "\n\tSorry #{@playertwo}, you cant place that ship there..."
    place_battleship_two
  end
end

def place_destroyer_two
  puts "\n\tNow #{@playertwo}, where would you like to place your
  \tdestroyer?"
  print "\n\t>>>"
  destroyer_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your destroyer
  \tto face on the board?"
  print "\n\t>>>"
  destroyer_orientation = $stdin.gets.chomp
  if (@game.boundary(destroyer_place, destroyer_orientation, 3) && @game.clashes_two(destroyer_place, destroyer_orientation, 3)) == true
    @game.board_check.add_destroyer_two(destroyer_place, destroyer_orientation)
  else
    puts "\n\tSorry #{@playertwo}, you cant place that ship there..."
    place_destroyer_two
  end
end

def place_submarine_two
  puts "\n\tNow #{@playertwo}, where would you like to place your
  \tsubmarine?"
  print "\n\t>>>"
  submarine_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your submarine
  \tto face on the board?"
  print "\n\t>>>"
  submarine_orientation = $stdin.gets.chomp
  if (@game.boundary(submarine_place, submarine_orientation, 3) && @game.clashes_two(submarine_place, submarine_orientation, 3)) == true
    @game.board_check.add_submarine_two(submarine_place, submarine_orientation)
  else
    puts "\n\tSorry #{@playertwo}, you cant place that ship there..."
    place_submarine_two
  end
end

def place_patrol_two
  puts "\n\tNow #{@playertwo}, where would you like to place your
  \tpatrol boat?"
  print "\n\t>>>"
  patrol_place = $stdin.gets.chomp
  puts "\n\tNow which direction would you like your patrol
  \tboat to face on the board?"
  print "\n\t>>>"
  patrol_orientation = $stdin.gets.chomp
  if (@game.boundary(patrol_place, patrol_orientation, 2) && @game.clashes_two(patrol_place, patrol_orientation, 2)) == true
    @game.board_check.add_patrol_two(patrol_place, patrol_orientation)
  else
    puts "\n\tSorry #{@playertwo}, you cant place that ship there..."
    place_patrol_two
  end
end



puts "\n\tWelcome to battleships!\n"
sleep(3)
puts "\n\tPLayer one, please enter your name?...\n"
print "\n\t>>>"
@playerone = $stdin.gets.chomp
puts "\n\tHello, #{@playerone}!\n"
sleep(3)
puts "\n\tNow Player two, please enter your name...\n"
print "\n\t>>>"
@playertwo = $stdin.gets.chomp
puts "\n\tHello, #{@playertwo}!"
sleep(3)
puts "\n\tNow #{@playertwo} please pass the computer to #{@playerone}."
sleep(4)
puts "\n\tHello again #{@playerone}!"
sleep(2)
puts "\n\tThis is your board #{@playerone}."
show_player_one_board
sleep(3)
puts "\n\tNow #{@playerone} here are your ships..."
sleep(3)
puts "\n\tYou have your aircraft carrier, which is 5 units long and will
\tbe represented like this 'XXXXX'."
sleep(3)
puts "\n\tYou have a battleship, which is 4 units long and will
\tbe represented like this 'XXXX'."
sleep(3)
puts "\n\tYou have your destroyer, which is 3 units long and will
\tbe represented like this 'XXX'."
sleep(3)
puts "\n\tYou have your submarine, which is also 3 units long and will
\tbe represented like this 'XXX'."
sleep(3)
puts "\n\tFinally, you have your patrol boat, which is a mere 2 units
\tlong and will be represented like this 'XX'."
sleep(3)
puts "\n\tJust in case you are not familiar with the rules, let me
\tgo over them quickly for you."
sleep(3)
puts "\n\tYou and your opponent will place down your ships on the board,
\tyou will then attempt to destroy your opponents fleet by providing
\tcoordinates for your ships guns. You will not know the locations
\tof your opponents ships, however you will know whether you hit
\tan enemy ship, or miss."
sleep(3)
puts "\n\tA hit will be represented by an @ symbol, and a miss by a 0."
sleep(3)
puts "\n\tThe coordinates you provide must be in the format 'A3' etc,
\tand when placing your ships you be prompted for the
\tdirection of the ship in question after providing its
\tdesired location, the direction must be either
\t'horizontal' or 'vertical'."
sleep(3)
puts "\n\tThe first to sink all of their opponents ships will win
\tthe game, best of luck!"
sleep(3)
puts "\n\tNow #{@playerone}, time to place your ships."
sleep(3)
place_aircraft_one
show_player_one_board
sleep(2)
puts "\n\tExcellent #{@playerone}, your aircraft carrier has been placed."
sleep(2)
place_battleship_one
show_player_one_board
sleep(2)
puts "\n\tExcellent #{@playerone}, your battleship has been placed."
sleep(2)
place_destroyer_one
show_player_one_board
sleep(2)
puts "\n\tExcellent #{@playerone}, your destroyer has been placed."
sleep(2)
place_submarine_one
show_player_one_board
sleep(2)
puts "\n\tExcellent #{@playerone}, your submarine has been placed."
sleep(2)
place_patrol_one
show_player_one_board
sleep(2)
puts "\n\tExcellent #{@playerone}, your patrol boat has been placed."
sleep(2)
puts "\n\tYour fleet is now complete, please pass the computer to #{@playertwo}
\tafter this message disappears."
sleep(3)
puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
sleep(3)
puts "\n\tHello again #{@playertwo}!"
sleep(2)
puts "\n\tThis is your board #{@playertwo}."
show_player_two_board
sleep(3)
puts "\n\tNow #{@playertwo} here are your ships..."
sleep(3)
puts "\n\tYou have your aircraft carrier, which is 5 units long and will
\tbe represented like this 'XXXXX'."
sleep(3)
puts "\n\tYou have a battleship, which is 4 units long and will
\tbe represented like this 'XXXX'."
sleep(3)
puts "\n\tYou have your destroyer, which is 3 units long and will
\tbe represented like this 'XXX'."
sleep(3)
puts "\n\tYou have your submarine, which is also 3 units long and will
\tbe represented like this 'XXX'."
sleep(3)
puts "\n\tFinally, you have your patrol boat, which is a mere 2 units
\tlong and will be represented like this 'XX'."
sleep(3)
puts "\n\tJust in case you are not familiar with the rules, let me
\tgo over them quickly for you."
sleep(3)
puts "\n\tYou and your opponent will place down your ships on the board,
\tyou will then attempt to destroy your opponents fleet by providing
\tcoordinates for your ships guns. You will not know the locations
\tof your opponents ships, however you will know whether you hit
\tan enemy ship, or miss."
sleep(3)
puts "\n\tA hit will be represented by an @ symbol, and a miss by a 0."
sleep(3)
puts "\n\tThe coordinates you provide must be in the format 'A3' etc,
\tand when placing your ships you be prompted for the
\tdirection of the ship in question after providing its
\tdesired location, the direction must be either
\t'horizontal' or 'vertical'."
sleep(3)
puts "\n\tThe first to sink all of their opponents ships will win
\tthe game, best of luck!"
sleep(3)
puts "\n\tNow #{@playertwo}, time to place your ships."
sleep(3)
place_aircraft_two
show_player_two_board
sleep(2)
puts "\n\tExcellent #{@playertwo}, your aircraft carrier has been placed."
sleep(2)
place_battleship_two
show_player_two_board
sleep(2)
puts "\n\tExcellent #{@playertwo}, your battleship has been placed."
sleep(2)
place_destroyer_two
show_player_two_board
sleep(2)
puts "\n\tExcellent #{@playertwo}, your destroyer has been placed."
sleep(2)
place_submarine_two
show_player_two_board
sleep(2)
puts "\n\tExcellent #{@playertwo}, your submarine has been placed."
sleep(2)
place_patrol_two
show_player_two_board
sleep(2)
puts "\n\tExcellent #{@playertwo}, your patrol boat has been placed."
sleep(2)
puts "\n\tYour fleet is now complete, please pass the computer to #{@playerone}
\tafter this message disappears, and the game will begin."
sleep(3)
puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
sleep(3)
until @game.board_check.player_two_board.flatten.include?("X") == false || @game.board_check.player_two_board.flatten.include?("X") == false
  game_cycle
end

if @game.board_check.player_two_board.flatten.include?("X") == false
  puts "\n\tWell done #{@playerone}, you are victorious!"
else
  puts "\n\tWell done #{@playertwo}, you are victorious!"
end
