other
start: nrOfIOThreads
	"^<AbtError | receiver> This method actually creates a context within 0MQ"
	

	zmqContext := self interfaceClass init: nrOfIOThreads
