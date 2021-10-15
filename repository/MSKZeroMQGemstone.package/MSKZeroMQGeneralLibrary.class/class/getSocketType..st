api-calls-options
getSocketType: extSocketOrCPointer

	^self valueOf32BitOption: extSocketOrCPointer optionType: self ZMQ_TYPE
