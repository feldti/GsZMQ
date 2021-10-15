constants-events
ZMQ_EVENT_CLOSE_FAILED

	^SessionTemps current 
		at: #ZMQ_EVENT_CLOSE_FAILED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_CLOSE_FAILED
				put:  256]
