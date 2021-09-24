class Airplane
  attr_reader :landed

  def initialize(landed)
    @landed = landed
  end

  def takeOff
    @landed = false
  end
end