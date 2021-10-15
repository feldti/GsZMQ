api-calls-options
setSocketOption: anExtendedSocket optionType: optionType optionValue: valueBuffer  optionLength: sizeInteger

	^self handleZMQErrorLTZero: (self fnSetSocketOption callWith: (Array with: anExtendedSocket zmqSocket with: optionType with: valueBuffer with: sizeInteger))
