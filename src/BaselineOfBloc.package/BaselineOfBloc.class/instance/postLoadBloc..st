actions
postLoadBloc: aSpecLoader

	self
		load: 'Bloc'
		from: aSpecLoader spec versionSpec repositories map keys first.

	"Make sure that external structures have valid accessors"
	Author
		useAuthor: 'UFFI'
		during: [ FFIExternalStructure withAllSubclassesDo: #rebuildFieldAccessors ].

	"register right Meta key for OSX"
	Key macOSVirtualKeyTable
		at: 16r36 put: (Key value: 16rffe8). "  kVK_Command_R = 0x36"