conversion
asStringTelegramFrame

	| size data |

	size := self size.
	data := self data.

	^ZMQTextFrame newWithData: (data stringFrom: 0 to: size - 1)
