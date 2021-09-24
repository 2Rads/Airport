require 'Airplane'

describe Airplane do
  it 'create Airplane class' do
    planeA = Airplane.new(true)
    planeB = Airplane.new(false)
  end

  it 'has correct land value' do
    planeA = Airplane.new(true)
    expect(planeA.landed).to eq true
    planeB = Airplane.new(false)
    expect(planeB.landed).to eq false
  end

  it 'allows plane to take off' do
    plane = Airplane.new(true)
    plane.takeOff
    expect(plane.landed).to eq false
  end
end