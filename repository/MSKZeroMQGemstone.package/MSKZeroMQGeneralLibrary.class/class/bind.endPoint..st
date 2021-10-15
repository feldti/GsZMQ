api-calls-sockets
bind: aZMQExtendedSocket endPoint: aZMQEndpoint

	^self handleZMQErrorLTZero: (self fnBind callWith: (Array with: aZMQExtendedSocket zmqSocket with: (CByteArray withAll: aZMQEndpoint fullAddressString)))
