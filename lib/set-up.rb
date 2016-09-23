require_relative 'game'

def start_game
  puts "Welcome to Battleships!"
  puts " "
  @game = Game.new
  puts @game.board.print_board
end

def start_positioning
  puts "What size ship would you like? - 2/3/4/5"
  @game.ship_size
  @game.place_ship
end



start_game
start_positioning
