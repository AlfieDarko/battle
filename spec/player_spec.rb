require 'player'

describe Player do
  player = Player.new('PlayerOne')

  it 'returns PlayerOne as a name' do
    expect(player.name).to eq 'PlayerOne'
  end

  it 'returns hitpoints -10' do
    expect(player.reduce_points).to eq 90
  end
end
