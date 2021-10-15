api-calls-context
init: numberOfThreads
	"^<CPointer> MSKZeroMQGeneralLibrary zmqInit: 1"

	| ptrToContext |

	(ptrToContext := self fnInit callWith: { numberOfThreads }) mskIsNull
		ifTrue:[ ^self handleZMQError  ].

	^ptrToContext
