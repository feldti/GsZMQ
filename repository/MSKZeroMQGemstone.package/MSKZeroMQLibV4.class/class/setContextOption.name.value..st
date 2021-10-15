api-calls-context
setContextOption: aZMQExtendedContextOrCPointer name: intOptionName value: intOptionValue

	self handleZMQErrorLTZero: (self fnCtxSet callWith: (Array with: aZMQExtendedContextOrCPointer zmqContext with: intOptionName with: intOptionValue ))
