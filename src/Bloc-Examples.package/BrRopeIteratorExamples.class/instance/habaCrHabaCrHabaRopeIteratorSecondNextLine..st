examples - haba,cr,haba,cr,haba
habaCrHabaCrHabaRopeIteratorSecondNextLine: anIterator
	<gtExample>
	<dependsOn: #habaCrHabaCrHabaRopeIteratorFirstNextLine:>
	| nextLine |
	
	self assert: anIterator hasNext.
	self assert: anIterator position equals: 2 + self haba size.
	
	nextLine := anIterator nextLine.
	
	self assert: nextLine collection equals: self haba.
	self assert: anIterator position equals: 3 + (self haba size * 2).
	self assert: anIterator hasNext.
	
	^ anIterator