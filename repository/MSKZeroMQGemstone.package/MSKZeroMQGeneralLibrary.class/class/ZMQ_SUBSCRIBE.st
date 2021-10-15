constants-socket-options
ZMQ_SUBSCRIBE

	^SessionTemps current 
		at: #ZMQ_SUBSCRIBE
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_SUBSCRIBE
				put:  6]
