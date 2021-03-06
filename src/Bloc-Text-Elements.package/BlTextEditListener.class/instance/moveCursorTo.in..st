cursor - management
moveCursorTo: aTextIndex in: aTextElement
	
	self
		assert: [ aTextIndex >= 0 ]
		description: [ 'Text index must not be negative' ].
		
	self
		assert: [ aTextIndex <= aTextElement text size ]
		description: [ 'Text index must be within text size' ].

	aTextElement showCursorAt: aTextIndex