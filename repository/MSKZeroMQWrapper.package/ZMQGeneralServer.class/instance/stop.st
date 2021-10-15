start - stop
stop
	
	closeFlag := true.
	self isRunning 
		ifFalse: [ 
			process := nil.
			^ self ].
	process terminate. 
	process := nil.
	self closeDelegate.
