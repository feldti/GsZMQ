api-calls-options
valueOf32BitOption: anExtendedSocket optionType: optionType

	| valueBuffer sizeBuffer |

	valueBuffer := self byteArrayFor32BitInstances: 1.
	sizeBuffer := self byteArrayFor64BitInstances: 1.
	sizeBuffer int64At: 0 put: 4.
	self handleZMQErrorLTZero: (self getSocketOption: anExtendedSocket optionType: optionType optionValue: valueBuffer  optionLength: sizeBuffer).
	^valueBuffer int32At: 0.
