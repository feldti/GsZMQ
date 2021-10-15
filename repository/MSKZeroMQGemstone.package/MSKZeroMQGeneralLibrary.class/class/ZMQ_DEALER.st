constants-socket types
ZMQ_DEALER

	^SessionTemps current 
		at: #ZMQ_DEALER
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_DEALER
				put:  5]
