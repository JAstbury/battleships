class Board
  attr_reader :table

  def initialize
    @table = [["00", "01", "02", "03", "04", "05"],
            ["10", "11", "12", "13", "14", "15"],
            ["20", "21", "22", "23", "24", "25"],
            ["30", "31", "32", "33", "35", "36"],
            ["40", "41", "42", "43", "45", "46"],
            ["50", "51", "52", "53", "55", "56"],]
  end

  def print_board
    string = ""
    @table.each do |r|
      string << r.each { |p| p }.join(" ") + "\n"
    end
    return string
  end

end
