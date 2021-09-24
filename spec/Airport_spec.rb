require 'Airport'

describe Airport do
  let(:plane_landed) { double :Airplane, :landed => true }
  let(:plane_notLanded) { double :Airplane, :landed => false } 

  it 'create Airport class' do
    airport = Airport.new
  end

  it  { is_expected.to respond_to(:landPlane).with(1).argument }

  it 'adds plane to airport' do
    subject.landPlane(plane_notLanded)
    expect(subject.instance_variable_get(:@planes).pop).to eq plane_notLanded
  end

  it 'cannot land a landed plane' do
    expect{ subject.landPlane(plane_landed) }.to raise_error 'already landed'
  end
end