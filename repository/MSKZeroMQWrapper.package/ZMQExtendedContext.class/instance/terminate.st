other
terminate
	"^<AbtError | receiver> This method closes the zwm context - if not done correctly this call WILL block !!!!"
	
	extendedSockets do: [ :eachExtendedSocket | eachExtendedSocket close ].
	zmqContext ifNotNil:[ self interfaceClass term: self zmqContext . zmqContext := nil ].
