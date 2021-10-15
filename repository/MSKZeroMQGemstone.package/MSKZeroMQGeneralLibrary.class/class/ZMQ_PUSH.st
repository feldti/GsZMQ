constants-socket types
ZMQ_PUSH

	^SessionTemps current 
		at: #ZMQ_PUSH
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_PUSH
				put:  8 ]
