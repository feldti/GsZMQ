constants-socket types
ZMQ_REP

	^SessionTemps current 
		at: #ZMQ_REP
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_REP
				put:  4]
