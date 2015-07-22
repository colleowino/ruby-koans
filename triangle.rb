# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	result =  
		if a+b+c == 0
			raise TriangleError.new("Testing non existent sides")
		elsif a < 0 or b < 0 or c < 0
			raise TriangleError.new("testing for -ve valued sides")
		elsif a == b and b == c
		 	:equilateral
		elsif a == b or b == c or a == c

				# comparing the sizes and seeing if the smaller one appears more than the larger side.
				sides = [a,b,c]
				min = sides.min
				if sides.count(min) == 2
					raise TriangleError.new("raise an the 2 equal sides are smaller")
				end
			:isosceles
		else
			:scalene
		end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
