class Airport

  def initialize()
    @planes = []
  end

  def landPlane(plane)
    fail "already landed" if plane.landed == true
    @planes << plane
  end
end