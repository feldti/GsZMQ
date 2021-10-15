api-calls-sockets
close: aZMQExtendedSocket

	^self handleZMQErrorLTZero: (self fnClose callWith: (Array with: aZMQExtendedSocket zmqSocket ))
