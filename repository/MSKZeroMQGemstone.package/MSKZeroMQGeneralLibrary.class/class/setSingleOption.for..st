api-calls-options
setSingleOption: aZMQSingleSocketOption for: extSocketOrCPointer

	aZMQSingleSocketOption optionType = self ZMQ_LINGER ifTrue:[ ^self setLingerValue: extSocketOrCPointer value: aZMQSingleSocketOption value ].

	"rest to be filled in when needed"
