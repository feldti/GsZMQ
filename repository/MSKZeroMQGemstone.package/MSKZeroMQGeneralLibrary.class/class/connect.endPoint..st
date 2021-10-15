api-calls-sockets
connect: aZMQExtendedSocket endPoint: aZMQEndpoint

	^self handleZMQErrorLTZero: (self fnConnect callWith: (Array with: aZMQExtendedSocket zmqSocket with: (CByteArray withAll: aZMQEndpoint fullAddressString)))
