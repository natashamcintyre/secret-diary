# understands how to lock and unlock

class Security
attr_reader :locked

  def initialize
    @locked = true #locked
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def lock?
    @locked
  end

end
