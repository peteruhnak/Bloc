updating screen
hasResized
	"Return true if renderer extent changed.
	It may happen if window moved between displays with different dpi,
	e.g. from normal display to retina"
	<return: #Boolean>

	^ drawableExtent ~= sdlSpace drawableExtent