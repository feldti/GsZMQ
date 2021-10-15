api-calls-options
getSocketOption: anExtendedSocket optionType: optionType optionValue: valueBuffer  optionLength: sizeBuffer

	^self fnGetSocketOption callWith: (Array with: anExtendedSocket zmqSocket with: optionType with: valueBuffer with: sizeBuffer)
