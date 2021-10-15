start - stop
isRunning
	"Return true when I am running"
	
	^ self process notNil and: [ self exSocket notNil ]
