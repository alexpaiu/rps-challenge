require './lib/game'

describe Game do
  context 'can be initialized'
  it {is_expected.to be_an_instance_of(Game)}
end
