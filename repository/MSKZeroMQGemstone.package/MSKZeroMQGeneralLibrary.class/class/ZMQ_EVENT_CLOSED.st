constants-events
ZMQ_EVENT_CLOSED

	^SessionTemps current 
		at: #ZMQ_EVENT_CLOSED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_CLOSED
				put:  128]
