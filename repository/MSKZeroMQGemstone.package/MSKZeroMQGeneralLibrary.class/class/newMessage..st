api-calls-messages
newMessage: aMessageClass

	^aMessageClass new initialize
		zmqMessage: (CByteArray gcMalloc: 36) ;
		yourself.
