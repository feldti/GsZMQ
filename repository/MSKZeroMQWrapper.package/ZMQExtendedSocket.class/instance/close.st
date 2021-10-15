service
close


	zmqSocket notNil ifTrue:[ 
		self interfaceClass close: zmqSocket. 
		zmqSocket := nil ].
