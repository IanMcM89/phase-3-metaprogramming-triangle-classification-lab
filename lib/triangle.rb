class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    @a, @b, @c = [a, b, c].sort
    if a <= 0 || a + b <= c then raise TriangleError
    elsif a == c then :equilateral
    elsif a == b || b == c then :isosceles
    else :scalene
    end
  end

  class TriangleError < StandardError
  end
end
