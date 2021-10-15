api-calls-receiving
receiveMessage: zmqMessage socket: extendedSocket flags: flags

	^self handleZMQErrorLTZero: (self fnRecv callWith: (Array with: extendedSocket zmqSocket with: zmqMessage zmqMessage with: flags))
