socket options
getSocketOption: optionType

	^self extendedContext class zmq getSocketOption: self optionType: optionType
