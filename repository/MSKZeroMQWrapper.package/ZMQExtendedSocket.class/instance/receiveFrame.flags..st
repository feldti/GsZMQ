service-receiving
receiveFrame: zmqMessage flags: flagsValue

	|  telegramFrame rc |

	zmqMessage init.
	rc := self interfaceClass receiveMessage: zmqMessage socket: self flags: flagsValue.
	self halt.
	telegramFrame := zmqMessage asTelegramFrame.
	^telegramFrame
