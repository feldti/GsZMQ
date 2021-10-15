constants-events
ZMQ_EVENT_CONNECT_RETRIED

	^SessionTemps current 
		at: #ZMQ_EVENT_CONNECT_RETRIED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_CONNECT_RETRIED
				put:  4]
