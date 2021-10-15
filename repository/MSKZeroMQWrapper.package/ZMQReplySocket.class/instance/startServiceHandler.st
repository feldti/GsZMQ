other
startServiceHandler

	[ self closeFlag ] whileFalse:[
		|  aZMQTelegram |

		(aZMQTelegram := self receiveBlock value: self) notNil ifTrue:[
			| aZMQTelegramToSend |
			self postReceiveBlock value: self value: aZMQTelegram.
			aZMQTelegramToSend := self createAnswerBlock value: self value: aZMQTelegram.
			aZMQTelegramToSend send.
		]
	].
