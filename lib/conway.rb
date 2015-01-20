class Cell

  def initialize(status, position)
    @status = status
    @position = position
  end

  def is_alive?
    @status == "alive"
  end
end
