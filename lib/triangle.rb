
class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if triangle_inequality?
      raise TriangleError

    elsif side1 == side2 && side2 == side3
      :equilateral
    
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    
    else
      :scalene
    end
    end
       
   

    def triangle_inequality?
       side1 <= 0 || side2 <= 0 || side3 <= 0 || side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2

        
      end

      class TriangleError < StandardError
        "Invalid"
      end
end



  

