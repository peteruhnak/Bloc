api - bounds
width: aNumber
	<event: #BlElementExtentChangedEvent>
	| aLayoutConstraints |

	aLayoutConstraints := self constraints.
	(aLayoutConstraints horizontal resizer isExact and: [ 
		aLayoutConstraints horizontal resizer size = aNumber ])
		ifTrue: [ ^ self ].

	self constraintsDo: [ :c |
		c horizontal exact: aNumber ]