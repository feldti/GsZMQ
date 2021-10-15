api-calls-options
set64BitOption: anExtendedSocket optionType: optionType value: anInteger

	| valueBuffer  |

	valueBuffer := self byteArrayFor64BitInstances: 1.
	valueBuffer int64At: 0 put: anInteger.

	self setSocketOption: anExtendedSocket optionType: optionType optionValue: valueBuffer  optionLength: 8
