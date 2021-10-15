constants-events
ZMQ_EVENT_BIND_FAILED

	^SessionTemps current 
		at: #ZMQ_EVENT_BIND_FAILED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_BIND_FAILED
				put:  16]
