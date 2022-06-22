class Triangle
  attr_accessor :sideOne, :sideTwo, :sideThree, :kind
  def initialize(sideOne, sideTwo, sideThree)
    @sideOne = sideOne
    @sideTwo = sideTwo
    @sideThree = sideThree
  end
  def kind
    if (sideOne * sideTwo * sideThree == 0) || (sideOne + sideTwo) <= sideThree || (sideTwo + sideThree) <= sideOne || (sideThree + sideOne) <= sideTwo
      begin 
      raise TriangleError
      puts error.message
    end
  elsif sideOne == sideTwo && sideOne == sideThree
    :equilateral

  elsif sideOne == sideTwo || sideOne == sideThree || sideTwo == sideThree
    :isosceles

  else
    :scalene
  end
end 
    class TriangleError < StandardError
      # triangle error code
    end
end
