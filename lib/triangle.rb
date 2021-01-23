
class Triangle
  attr_accessor :x,:y,:z
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
    @kind = nil
  end
  
  def kind
    p sorted = [@x,@y,@z].sort
    if @x + @y < @z or x + z < y or y + z > x and @x > 0 and @y > 0 and @z > 0 and sorted[0] + sorted[1] > sorted[2]
      if @x == @y && @y == @z
        @kind = :equilateral
      elsif @x == @y or @y == @z or @z == @x
        @kind = :isosceles
      else
        @kind = :scalene
      end
      @kind
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    "Not a triangle"
  end

end