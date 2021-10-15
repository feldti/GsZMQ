constants-socket types
ZMQ_PAIR

	^SessionTemps current 
		at: #ZMQ_PAIR
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_PAIR
				put:  0 ]
