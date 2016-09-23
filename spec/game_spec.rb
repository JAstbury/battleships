require 'game'

describe Game do

  subject { described_class.new }

  describe '.initialize' do
    it 'creates a new board' do
      expect(Board).to receive(:new)
      subject.new
    end

    it 'prints out a welcome message' do
      # expect(STDOUT).to receive(:puts).with("A1 A2 A3 A4 A5 A6")
      # subject.new
    end
  end

end
