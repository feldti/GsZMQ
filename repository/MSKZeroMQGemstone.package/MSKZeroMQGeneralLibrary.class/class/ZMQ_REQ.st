constants-socket types
ZMQ_REQ

	^SessionTemps current 
		at: #ZMQ_REQ
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_REQ
				put:  3]
