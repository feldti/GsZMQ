api-calls-options
setLingerValue: anExtendedSocketOrCPointer value: lingerValue

	self set32BitOption: anExtendedSocketOrCPointer optionType: MSKZeroMQGeneralLibrary ZMQ_LINGER value: lingerValue
