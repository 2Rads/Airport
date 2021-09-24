require 'Airport'

describe Airport do
  it 'create Airport class' do
    airport = Airport.new
  end

  it  { is_expected.to respond_to(:landPlane).with(1).argument }
end