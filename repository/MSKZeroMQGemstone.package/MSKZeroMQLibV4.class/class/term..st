api-calls-context
term: aZMQExtendedContextOrCPointer
	"MSKZeroMQGeneralLibrary zmqTerm: aZMQExtendedContext"


	^self handleZMQErrorLTZero: (self fnCtxTerm callWith: (Array with: aZMQExtendedContextOrCPointer zmqContext ))
