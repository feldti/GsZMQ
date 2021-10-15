api-calls-options
valueOf64BitOption: anExtendedSocket optionType: optionType

	| rc valueBuffer sizeBuffer |

	valueBuffer := self byteArrayFor64BitInstances: 1.
	sizeBuffer := self byteArrayFor64BitInstances: 1.
	sizeBuffer int64At: 0 put: 8.
	self getSocketOption: anExtendedSocket optionType: optionType optionValue: valueBuffer  optionLength: sizeBuffer.
	^valueBuffer int64At: 0.
