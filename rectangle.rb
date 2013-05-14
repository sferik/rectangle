# coding: utf-8

class Angle < Object
  include Comparable

  def initialize(deg)
    raise ArgumentError.new("Degrees must be positive") if deg <= 0
    @deg = deg
  end

  def <=>(other)
    @deg <=> other.to_deg
  end

  def between?(first, second)
    (@deg >= first.to_deg) && (@deg <= second.to_deg)
  end

  def <(other)
    case other
    when Numeric
      @deg < other
    else
      super
    end
  end

  def <=(other)
    case other
    when Numeric
      @deg <= other
    else
      super
    end
  end

  def ==(other)
    case other
    when Numeric
      @deg == other
    else
      super
    end
  end

  def >(other)
    case other
    when Numeric
      @deg > other
    else
      super
    end
  end

  def >=(other)
    case other
    when Numeric
      @deg >= other
    else
      super
    end
  end

  def to_deg
    @deg
  end

  def to_rad
    @deg * Math::PI / 180
  end

  def right?
    @deg == 90
  end

  def acute?
    @deg < 90
  end

  def obtuse?
    @deg > 90
  end

end

class Rectangle < Object
  attr_reader :width, :height, :angles, :sides

  def initialize(width, height)
    @width = width
    @height = height
    @angles = [Angle.new(90), Angle.new(90), Angle.new(90), Angle.new(90)]
    @sides = 4
  end

  def area
    @width * @height
  end

end