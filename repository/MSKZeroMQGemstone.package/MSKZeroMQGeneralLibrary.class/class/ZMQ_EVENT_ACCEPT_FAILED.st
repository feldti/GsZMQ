constants-events
ZMQ_EVENT_ACCEPT_FAILED

	^SessionTemps current 
		at: #ZMQ_EVENT_ACCEPT_FAILED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_ACCEPT_FAILED
				put:  64]
