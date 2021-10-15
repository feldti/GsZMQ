constants-events
ZMQ_EVENT_DISCONNECTED

	^SessionTemps current 
		at: #ZMQ_EVENT_DISCONNECTED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_DISCONNECTED
				put:  512]
