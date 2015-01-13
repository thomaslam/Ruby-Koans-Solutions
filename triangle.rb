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
  # WRITE THIS CODE
  # Basic solution
  # if a == b or b == c or a == c
  # 	if a == b and b == c
  # 		return :equilateral
  # 	else
  # 		return :isosceles
  # 	end
  # else
  # 	return :scalene
  # end

  # Pretty damn smart solution
  sides = [a,b,c].sort
  raise TriangleError if sides.min < 0
  min, next_min, max = sides
  raise TriangleError if min + next_min <= max
  [:equilateral, :isosceles, :scalene].fetch [a, b, c].uniq.size-1
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
