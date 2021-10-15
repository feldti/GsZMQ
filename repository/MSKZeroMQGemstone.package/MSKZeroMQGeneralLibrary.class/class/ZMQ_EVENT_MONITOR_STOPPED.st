constants-events
ZMQ_EVENT_MONITOR_STOPPED

	^SessionTemps current 
		at: #ZMQ_EVENT_MONITOR_STOPPED
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_EVENT_MONITOR_STOPPED
				put:  1024]
