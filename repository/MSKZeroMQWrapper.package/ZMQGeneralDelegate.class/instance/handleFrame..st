support frames
handleFrame: aZMQGeneralFrame

	self telegram addFrame: aZMQGeneralFrame.
	aZMQGeneralFrame lastFrame ifTrue: [ self handleTelegram: self telegram  ]
