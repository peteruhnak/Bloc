manager -> element
detachChildAt: anIndex
	| anElement anElementHolder |
	anElement := infiniteElement children 
		at: anIndex
		ifAbsent: [ ^ self ].
	
	anElementHolder := self elementHolderOf: anElement.
	
	(anElementHolder isTmpDetached and: [
		anElement shouldIgnore not ])
			ifTrue: [ self error: 'Can not detach aleady detached child!' ].
	
	anElementHolder flags addTmpDetached.
	infiniteElement detachChild: anElement