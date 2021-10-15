constants-socket types
ZMQ_PUB

	^SessionTemps current 
		at: #ZMQ_PUB
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_PUB
				put:  1]
