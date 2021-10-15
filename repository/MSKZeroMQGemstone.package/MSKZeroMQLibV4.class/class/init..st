api-calls-context
init: numberOfThreads

	| ptrToContext |

	(ptrToContext := self fnCtxNew callWith: nil) mskIsNull
		ifTrue:[	^self handleZMQError 	].

	"now set the number of threads used by background process - default is always 1"
	(numberOfThreads ~= 1)
		ifTrue:[ self setContextOption: ptrToContext name: self ZMQ_IO_THREADS value: numberOfThreads ].

	^ptrToContext
