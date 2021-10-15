api-calls-context
getContextOption: aZMQExtendedContextOrCPointer name: intOptionName

	^self handleZMQErrorLTZero: (self fnCtxGet callWith: (Array with: aZMQExtendedContextOrCPointer zmqContext with: intOptionName))
