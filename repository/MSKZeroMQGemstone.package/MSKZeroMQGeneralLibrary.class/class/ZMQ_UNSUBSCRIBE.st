constants-socket-options
ZMQ_UNSUBSCRIBE

	^SessionTemps current 
		at: #ZMQ_UNSUBSCRIBE
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_UNSUBSCRIBE
				put:  7]
