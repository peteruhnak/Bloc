window - properties
position
	"Return window's position in screen coordinates"
	<return: #Point>
	
	^ self hostSpace
		ifNotNil: [ :aHostSpace | aHostSpace position ]
		ifNil: [ position ]