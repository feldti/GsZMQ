constants-socket types
ZMQ_XPUB

	^SessionTemps current 
		at: #ZMQ_XPUB
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_XPUB
				put:  9 ]
