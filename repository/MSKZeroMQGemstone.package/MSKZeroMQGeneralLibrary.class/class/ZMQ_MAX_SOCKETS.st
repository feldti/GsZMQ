constants-context
ZMQ_MAX_SOCKETS

	^SessionTemps current 
		at: #ZMQ_MAX_SOCKETS
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_MAX_SOCKETS
				put:  2 ]
