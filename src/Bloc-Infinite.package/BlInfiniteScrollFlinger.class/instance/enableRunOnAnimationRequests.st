private
enableRunOnAnimationRequests

	eatRunOnAnimationRequest := false.
	reSchedulePostAnimationCallback
		ifTrue: [ self postOnAnimation ]