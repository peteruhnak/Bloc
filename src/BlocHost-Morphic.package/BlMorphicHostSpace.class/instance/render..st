host space - rendering
render: aSpace
	"Render a given abstract space on an underlying window or visual area"

	self lock critical: [ renderer render: aSpace ]