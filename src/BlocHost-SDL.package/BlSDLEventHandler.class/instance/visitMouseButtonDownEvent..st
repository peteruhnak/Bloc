event handling
visitMouseButtonDownEvent: event
	^ BlMouseDownEvent new
		position: event x @ event y;
		screenPosition: (self globalMousePositionForEvent: event);
		modifiers: (self convertKeyModifiersFromModState: SDL2 modState);
		button: (self convertButtonFromMouseEvent: event);
		timestamp: Time millisecondClockValue