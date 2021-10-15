default blocks
defaultReceiveBlock
	"^<ZMQTelegram | nil >"

	^[ :extSocket   | extSocket receiveZMQTelegram ]
