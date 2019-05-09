# Write a program that will determine the type of a triangle. It should take the lengths of the triangle's three sides as input, and return whether the triangle is equilateral, isosceles or scalene.

# XML message structure:
<GeometricalFigure>
	<NoOfSides>3</NoOfSides>
	<SidesList>
		<SideLength>1</SideLength>
		<SideLength>2</SideLength>
		<SideLength>5</SideLength>
	</SidesList>
</GeometricalFigure>

# NoOfSides -> represents the dimension of sides for the geometrical figure
# the list SideLists should contain the lengths of the sides and must have the same number of elements as specified as value in NoOfSides
# tests:
      - NoOfSides     -> is integer
                      -> is always positive
                      -> equals 3
      - number of elements of SidesList list equals NoOfSides value
      - each element SideLength value is numeric and positive
      
