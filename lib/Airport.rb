class Airport
  @maxPlanes
  MAXSIZE = 50 #tiny airport

  def initialize(maxSize = MAXSIZE)
    @planes = []
    @maxPlanes = maxSize
  end

  def landPlane(plane)
    fail "already landed" if (plane.landed == true)
    fail "Airport full" if (@planes.length == @maxPlanes)
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