initialization
initializeForBuffer: aBufferSurface
	"Asks host space to initialize itself to be used together with a pixel buffer surface.
	Default implementation simply connects renderer, host space and surface together"

	aBufferSurface hostSpace: self.
	aBufferSurface hostRenderer: self renderer.

	self renderer surface: aBufferSurface