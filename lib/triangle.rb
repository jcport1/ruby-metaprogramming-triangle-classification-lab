class Triangle
  # write code here

  attr_accessor :s1, :s2, :s3, :kind #writer & reader method. good to have both in case you need to re-write these

  def initialize(s1, s2, s3)

    @s1 = s1
    @s2 = s2
    @s3 = s3
  end 

  def kind 
    #kind should return, as a symbol, the type of triangle 
    #three equal sides = equilateral, 2 equal sides = isosceles, no equal sides = scalene
    if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2 #conditions to check if triangle is not triangle

    begin  
      raise TriangleError
      puts error.message
      end 

    elsif s1 == s2 && s1 == s3
      self.kind = :equilateral

    elsif s1 == s2 || s1 == s3 || s2 == s3 

      self.kind = :isosceles 
    else 
      self.kind = :scalene 
    end 
  end 

  class TriangleError < StandardError
    # triangle error code
    puts "this is not a triangle"
  end
  
end 

