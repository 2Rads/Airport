require 'Airport'

describe Airport do
  let(:plane) { double :Airplane } 
  it 'create Airport class' do
    airport = Airport.new
  end

  it  { is_expected.to respond_to(:landPlane).with(1).argument }

  it 'adds plane to airport' do
    subject.landPlane(plane)
    expect(subject.instance_variable_get(:@planes).pop).to eq plane
  end
end