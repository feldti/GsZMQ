constants-io
ZMQ_POLLERR

	^SessionTemps current 
		at: #ZMQ_POLLERR
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_POLLERR
				put:  4]
