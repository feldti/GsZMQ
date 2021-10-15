constants-socket-options
ZMQ_TYPE

	^SessionTemps current 
		at: #ZMQ_TYPE
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_TYPE
				put:16]
