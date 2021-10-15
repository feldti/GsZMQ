constants-socket types
ZMQ_SUB

	^SessionTemps current 
		at: #ZMQ_SUB
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_SUB
				put:  2]
