class Triangle
  attr_reader :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    sides = [self.side_one, self.side_two, self.side_three]
    sides.sort!
    if sides.any? {|side| side <= 0} || sides[0] + sides[1] < sides[2]
      raise TriangleError
    elsif self.side_one == self.side_two && self.side_two == self.side_three
      :equilateral
    elsif self.side_one
  end
end

class TriangleError < StandardError

end
