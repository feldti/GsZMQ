constants-io
ZMQ_POLLOUT

	^SessionTemps current 
		at: #ZMQ_POLLOUT
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_POLLOUT
				put:  2]
