conversion
asBinaryTelegramFrame

	| size data |

	(size := self size) = 0 ifTrue:[ ^ZMQBinaryFrame newWithData: ByteArray new].

	data := self data.
	^ZMQBinaryFrame newWithData: ((CByteArray fromCPointer: data numBytes: size) byteArrayFrom: 0 to: size - 1)
