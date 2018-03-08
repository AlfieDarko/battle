require 'game'

describe Game do
  let(:player1) { double 'player1' }
  let(:player2) { double 'player2' }
  subject(:subject) { Game.new(player1, player2) }

  it 'should initialize turn with player 1' do
    expect(subject.turn).to eq player1
  end

  describe 'attack' do
    it 'calls reduce points method' do
      expect(player2).to receive :reduce_points
      subject.attack(player2)
    end
  end
end
