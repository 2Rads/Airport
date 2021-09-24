class Airport
  def initialize
    @planes = []
  end

  def landPlane(plane)
    @planes << plane
  end
end