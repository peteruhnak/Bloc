settings
preferencesOn: aBuilder
	<systemsettings>
	(aBuilder group: #Bloc)
		label: 'Bloc';
		description: 'Bloc settings';
		parent: self preferencesGroup;
		with: [
			(aBuilder pickOne: #preferableHostClass)
				target: self;
				order: 1;
				label: 'Preferable host' ;
				domainValues: (BlHost availableHostClasses collect: [ :aHostClass | aHostClass label -> aHostClass ]);
				description: 'Choose which host to be used for opening spaces'.

			(aBuilder pickOne: #preferableSpartaCanvas)
				target: self;
				order: 2;
				precondition: [ self environment includesKey: #BlSpartaRenderer ];
				label: 'Preferable Sparta renderering backend' ;
				domainValues: ((self environment at: #BlSpartaRenderer) availableCanvasBuilderClasses collect: [ :aBuilderClass | aBuilderClass label -> aBuilderClass ]);
				description: 'Choose which graphical library should be used to render bloc spaces'.
				
			(aBuilder pickOne: #preferableEventHandlerRegistry)
				target: self;
				order: 3;
				label: 'Preferable event handler registry backend' ;
				domainValues: ((BlHandlerRegistry availableRegistryClasses collect: [ :aClass | aClass label -> aClass ]) sort: [ :a :b | a key < b key ]);
				description: 'Choose which data structure should be used for event handler registry'.

			(aBuilder setting: #assertionsEnabled)
				order: 4;
				target: self;
				label: 'Assertions';
				description: 'Set enabled to turn assertions on or disable to turn them off';
				default: [ true ].
				
			(aBuilder setting: #debugModeEnabled)
				order: 5;
				target: self;
				label: 'Debug Mode';
				description: 'Set enabled to turn extensive debugging mode on or disable to turn it off';
				default: [ false ].
		]