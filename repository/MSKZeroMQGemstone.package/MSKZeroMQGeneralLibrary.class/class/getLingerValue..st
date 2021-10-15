api-calls-options
getLingerValue: extSocketOrCPointer

	^self valueOf32BitOption: extSocketOrCPointer optionType: self ZMQ_LINGER
