require_relative 'board'
require_relative 'ship'

class Game

  def initialize
    @board = Board.new
    @start_choice = ""
    @finish_choice = ""
    @size = 0
    start_message
  end

  def start_message
    puts "Welcome to Battleships!"
    puts " "
    print @board.print_board
    place_ship
  end

  def place_ship
    puts "What size ship would you like? - 2/3/4/5"
    ship_size
    puts "Please enter the co-ordinate for the head of your ship"
    start_coordinate
    puts "Please enter the co-ordinate for the end of your ship"
    finish_coordinate
    @Ship1 = Ship.new(@size, @start_choice, @finish_choice)
    print "Yipppeee"
  end

  def ship_size
    size = gets.chomp.to_i
    until size.between?(2, 5)
      puts "Please enter a valid size"
      size = gets.chomp.to_i
    end
    @size = size
  end

  def start_coordinate
      start = gets.chomp
      until @board.table.any? { |row| row.include?(start) }
        puts "Please enter a correct start co-ordinate"
        start = gets.chomp
      end
      @start_choice = start
  end

  def finish_coordinate
    finish = gets.chomp
    until @board.table.any? { |row| row.include?(finish) }
      puts "Please enter a correct finish co-ordinate"
      finish = gets.chomp
    end
    valid_coordinate(finish)
  end

  private

  def valid_coordinate(finish)
    start_letters = @start_choice.split('')
    end_letters = finish.split('')
    if start_letters[0] == end_letters[0]
      if start_letters[1].to_i + (@size-1) == end_letters[1].to_i || start_letters[1].to_i + (@size-1) == end_letters[1].to_i
        @finish_choice = finish; return
      end
    elsif start_letters[1] == end_letters[1]
      if start_letters[0].to_i + (@size-1) == end_letters[0].to_i || start_letters[0].to_i + (@size-1) == end_letters[0].to_i
        @finish_choice = finish; return
      end
    end
      puts "Please enter a valid end co-ordinate"
      finish_coordinate
  end
end
