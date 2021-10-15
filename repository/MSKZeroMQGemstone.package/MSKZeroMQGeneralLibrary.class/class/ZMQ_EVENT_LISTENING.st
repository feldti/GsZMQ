constants-events
ZMQ_EVENT_LISTENING

	^SessionTemps current 
		at: #ZMQ_EVENT_LISTENING
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_LISTENING
				put:  8]
