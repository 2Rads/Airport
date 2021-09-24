class Airport
  def initialize
    @planes = []
  end

  def landPlane(plane)
    fail "already landed" if plane.landed == true
    plane.landPlane
    @planes << plane
  end

  def takeOff
    fail "No planes at airport" if @planes.length == 0
    plane = @planes.pop
    plane.takeOff
    return plane
  end
end