api-calls-context
getNumberOfThreadForContext: aZMQExtendedContextOrCPointer

	^self getContextOption: aZMQExtendedContextOrCPointer name: self ZMQ_IO_THREADS
