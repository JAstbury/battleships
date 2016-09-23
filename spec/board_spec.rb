require 'board'

describe Board do

  subject { described_class.new }

  describe '.initialize' do
    it 'creates a new board' do
      board = described_class.new
      expect(board.table).to eq([["A1", "A2", "A3", "A4", "A5", "A6"],
              ["B1", "B2", "B3", "B4", "B5", "B6"],
              ["C1", "C2", "C3", "C4", "C5", "C6"],
              ["D1", "D2", "D3", "D4", "D5", "D6"],
              ["E1", "E2", "E3", "E4", "E5", "E6"],
              ["F1", "F2", "F3", "F4", "F5", "F6"],])
    end
  end

end
