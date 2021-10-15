instance creation
linger: anInteger

	^self new initialize
		optionType: MSKZeroMQGeneralLibrary ZMQ_LINGER ;
		value: anInteger ;
		yourself
