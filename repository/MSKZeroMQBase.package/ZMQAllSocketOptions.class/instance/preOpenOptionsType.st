helpers
preOpenOptionsType

	^OrderedCollection new
		add: MSKZeroMQGeneralLibrary ZMQ_LINGER ;
		add: MSKZeroMQGeneralLibrary ZMQ_SUBSCRIBE ;
		add: MSKZeroMQGeneralLibrary ZMQ_UNSUBSCRIBE ;
		yourself
