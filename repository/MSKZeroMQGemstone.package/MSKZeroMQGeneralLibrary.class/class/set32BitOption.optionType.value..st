api-calls-options
set32BitOption: anExtendedSocket optionType: optionType value: anInteger

	| valueBuffer  |

	valueBuffer := self byteArrayFor32BitInstances: 1.
	valueBuffer int32At: 0 put: anInteger.

	self setSocketOption: anExtendedSocket optionType: optionType optionValue: valueBuffer  optionLength: 4
