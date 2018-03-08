
require 'player'

describe Player do
  it 'returns PlayerOne as a name' do
    player = Player.new('PlayerOne')

    expect(player.name).to eq 'PlayerOne'
  end
end
