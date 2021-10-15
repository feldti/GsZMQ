constants-events
ZMQ_EVENT_ACCEPTED

	^SessionTemps current 
		at: #ZMQ_EVENT_ACCEPTED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_ACCEPTED
				put:  32]
