examples - haba,cr
habaCrRopeIteratorSecondNextLine: anIterator
	<gtExample>
	<dependsOn: #habaCrRopeIteratorFirstNextLine:>
	| nextLine |
	
	self assert: anIterator hasNext.
	self assert: anIterator position equals: 1 + self haba size.
	
	nextLine := anIterator nextLine.
	
	self assert: nextLine collection isEmpty.
	self assert: anIterator position equals: 2 + self haba size.
	self assert: anIterator hasNext not.
	
	^ anIterator