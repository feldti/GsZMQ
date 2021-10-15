constants-socket types
ZMQ_XSUB

	^SessionTemps current 
		at: #ZMQ_XSUB
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_XSUB
				put:  10 ]
