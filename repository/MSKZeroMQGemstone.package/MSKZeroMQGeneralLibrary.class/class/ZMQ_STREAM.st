constants-socket types
ZMQ_STREAM

	^SessionTemps current 
		at: #ZMQ_STREAM
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_STREAM
				put:  11 ]
