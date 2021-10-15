constants-socket types
ZMQ_PULL

	^SessionTemps current 
		at: #ZMQ_PULL
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_PULL
				put:  7 ]
