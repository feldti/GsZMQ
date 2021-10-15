constants-socket-options
ZMQ_SNDBUF

	^SessionTemps current 
		at: #ZMQ_SNDBUF
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_SNDBUF
				put:11]
