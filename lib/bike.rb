class Bike

  def initialize
    fix!
  end

  def broken?
    @broken
  end

  def break!
    @broken = true # woohoo!!!!
  end

  def fix!
    @broken = false
  end

end
