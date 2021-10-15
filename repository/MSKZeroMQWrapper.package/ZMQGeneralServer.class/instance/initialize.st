initialize
initialize

	super initialize.

	receiveBlock := self listenLoop.
    closeFlag := false.
	debugFlag := false.
