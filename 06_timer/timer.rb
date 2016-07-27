class Timer
  def initialize()
    @seconds = 0;
  end

  def seconds()
    @seconds
  end

  def seconds=(value)
    @seconds = value
  end

  def time_string()
    distribute_seconds = self.seconds

    # find the number of whole hours
    hr = distribute_seconds / 3600
    # pull out remaining seconds
    distribute_seconds = distribute_seconds % 3600
    # find the number of whole minutes
    min = distribute_seconds / 60
    # pull out remaining seconds
    sec = distribute_seconds % 60
    # return string with 1-digit results padded - convert fixnum using string interpolation
    time_string = "#{padded(hr)}:#{padded(min)}:#{padded(sec)}"
  end

  def padded(value)
    if "#{value}".length == 1
      return "0#{value}"
    else
      return "#{value}"
    end
  end
end
