events - simulation
simulateClickOnTransformedAndRelocated
	<gtExample>
	| element mouseDown mouseUp click |

	element := self simulateClick.
	element size: 10@10.
	element relocate: 500@300.
	element transform
		scaleBy: 15@15;
		translateBy: (300@0) negated;
		rotateBy: 30;
		rotateBy: 15;
		apply.
	
	mouseDown := mouseUp := click := 0.
	
	element addEventHandlerOn: BlMouseDownEvent do: [ mouseDown := mouseDown + 1 ].
	element addEventHandlerOn: BlMouseUpEvent do: [ mouseUp := mouseUp + 1 ].
	element addEventHandlerOn: BlClickEvent do: [ click := click + 1 ].
	
	BlSpace simulateClickOn: element.
	
	self assert: mouseDown equals: 1.
	self assert: mouseUp equals: 1.
	self assert: click equals: 1.
	
	^ element