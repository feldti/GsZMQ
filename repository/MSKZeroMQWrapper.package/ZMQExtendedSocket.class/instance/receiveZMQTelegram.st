service-receiving
receiveZMQTelegram
	| aZMQTelegram aZMQMessageFrame rc |

	self halt.
	aZMQTelegram := ZMQTelegram newOnSocket: self.
	aZMQMessageFrame := self  extendedContext newMessageFrame.

	rc := self receiveFrame: aZMQMessageFrame flags: MSKZeroMQGeneralLibrary ZMQ_DONTWAIT.
	(rc = MSKZeroMQGeneralLibrary EAGAIN) ifTrue:[aZMQMessageFrame close. ^nil ].

	aZMQTelegram
		addFrame: aZMQMessageFrame asTelegramFrame.

	[ self moreFramesWaiting ] whileTrue:[
		rc := self receiveFrame: aZMQMessageFrame flags: 0.
		aZMQTelegram
			addFrame: aZMQMessageFrame asTelegramFrame.
	].

	aZMQTelegram
		setNow ;
		receivedTelegram: true ;
		finish.
		
	aZMQMessageFrame close.
	^aZMQTelegram
