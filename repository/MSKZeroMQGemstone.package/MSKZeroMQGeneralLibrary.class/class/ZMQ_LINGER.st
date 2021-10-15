constants-socket-options
ZMQ_LINGER

	^SessionTemps current 
		at: #ZMQ_LINGER
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_LINGER
				put:17]
