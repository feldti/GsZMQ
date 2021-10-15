api-calls-sending
send: extendedSocket data: cByteArray size: sizeInteger flags: flags

	^self handleZMQErrorLTZero: (self fnSend callWith: (Array with: extendedSocket zmqSocket with: cByteArray with: sizeInteger with: flags))
