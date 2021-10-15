api-calls-options
valueOfReceiveMoreOption: anExtendedSocket

	^(self valueOf64BitOption: anExtendedSocket optionType: MSKZeroMQGeneralLibrary ZMQ_RCVMORE) ~= 0
