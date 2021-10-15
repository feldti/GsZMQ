constants-socket types
ZMQ_ROUTER

	^SessionTemps current 
		at: #ZMQ_ROUTER
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_ROUTER
				put:  6 ]
