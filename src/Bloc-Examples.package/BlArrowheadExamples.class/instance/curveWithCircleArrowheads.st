examples
curveWithCircleArrowheads
	<gtExample>
	| container curve |
	
	container := BlParabollaExamples new relativeCurvatureWithoutDecorations.
	curve := container children first.
	
	curve fromHead: self circleArrowhead.
	curve toHead: self circleArrowhead.
	curve border: (BlBorder paint: self curveColor width: self curveWidth).
	
	^ container