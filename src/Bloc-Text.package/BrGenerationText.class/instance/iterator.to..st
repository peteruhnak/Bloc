text - enumeration
iterator: anStartIndex to: anEndIndex
	"Return an iterator pointing to the character at anStartIndex and limited by anEndIndex"
	<return: #BrTextIterator>

	^ self text iterator: anStartIndex to: anEndIndex