constants-events
ZMQ_EVENT_CONNECT_DELAYED

	^SessionTemps current 
		at: #ZMQ_EVENT_CONNECT_DELAYED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_CONNECT_DELAYED
				put:  2]
