constants-io
ZMQ_POLLIN

	^SessionTemps current 
		at: #ZMQ_POLLIN
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_POLLIN
				put:  1]
