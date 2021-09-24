require 'Airplane'

describe Airplane do
  it 'create Airplane class' do
    planeA = Airplane.new(true)
    planeB = Airplane.new(false)
  end

  it 'has correct land value' do
    planeA = Airplane.new(true)
    expect(planeB.landed).to eq false
    planeB = Airplane.new(false)
    expect(planeA.landed).to eq true
  end
end