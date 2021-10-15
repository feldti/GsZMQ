constants-events
ZMQ_EVENT_CONNECTED

	^SessionTemps current 
		at: #ZMQ_EVENT_CONNECTED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_CONNECTED
				put:  1]
